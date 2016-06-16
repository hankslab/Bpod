function runordispatch(ProtocolName, ProtocolPath)
% Either run the protocol function or dispatch it.
% if protocol is a class with use_dispatch = true, then dispatch(protocol) otherwise run(protocol)
% Written by Jeffrey Erlich <jerlich@nyu.edu>, June 2016 

global BpodSystem  % We only need the bpod path. Maybe just pass in?

ProtocolDir = fullfile(BpodSystem.BpodPath,'Protocols');
 % Add the protocols dir to the path otherwise we won't see the classes
addpath(ProtocolDir); % Should this go into the Bpod.m file where the path is generated?

%% Case 1 - Protocol Directory is in the Protocols folder.
if ProtocolName(1) == '@'
	
	ProtocolName = ProtocolName(2:end); % Strip off leading @
	obj = usedispatcher(ProtocolName) 	% Check if this protocol uses dispatcher 
	if obj == 0
		error('BPod:LaunchManager','Bpod cannot run a class')
	else
		dispatch(obj)
	end
else 
	% The protocol name didn't start with @. But it could still be a class in a subdirectory of the same name.
	addpath(ProtocolPath) % We need to add this path to make the class visible (if there is a class in that folder)
	obj = usedispatcher(ProtocolName)
    if obj == 1
    	% The protocol is just a regular function name.
    	rmpath(ProtocolPath)  % To match the old functionality we remove the parent directory and use run
		run(fullfile(ProtocolPath, [ProtocolName, '.m']))
	elseif obj == 0
		error('BPod:LaunchManager','Bpod cannot run a class')
	else
		dispatch(obj)
	end 
end


function obj = usedispatcher(ProtocolName)
	% if this Protocol inherits from ProtoObj, return the object
	% if this is a class but doesn't inherit from ProtoObj, return 0
	% if this is not a class, return 1
	
	ftype = exist(ProtocolName,'class');
	obj = 0;
	if ftype == 8
	    % This is a class
	    obj = eval(ProtocolName);
	    if isa(obj, 'ProtoObj')
	    	return
	    else
	    	error('Bpod cannot run a class. Protocol classes must use_dispatch.')
	    end
    else
        ftype = exist(ProtocolName);

        if ftype == 2
            obj = 1;
		% The protocol is just a matlab script.
        end
	end
