function dispatch(obj, varargin)

%% dispatch(obj)
% obj is a class that inherits from ProtoObj.
% this function acts as a "bridge" between Bpod (in particular the global BpodSystem variable)
% and BPod protocols.

global BpodSystem

obj.init()

obj.loadSettings(BpodSystem.GUIData.SubjectName)  % This should pass something in 

while BpodSystem.BeingUsed



end
