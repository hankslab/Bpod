classdef (Abstract) ProtocolObj < handle
% This class defines a Protocol Object. 
% The methods of this class match the 'actions' that were implemented in BControl style classes.
% Instantiations of this class should not directly access the global BpodSystem but rather get passed relevant elements of that global through methods.
	properties (SetAccess=private,GetAccess=public)
		settings % a struct with the protocol level settings
		n_done_trials = 0;
		n_started_trials = 0;
		hit_history = [];
		reward_history = [];
		choice_history = [];

	end % properties

	methods
		function ProtocolObj(by, value)
			% by can be 'subject', 'subjID', 'settings' 
			% if by == 'subject' value should be a string
			% if by == 'subjID' value should be an int
			% if by == 'settings' value should be a struct

		end

		init(obj)
		
		loadSettings(obj, by, value)
		
		prepareNextTrial(obj)
		
		SMA = generateSM(obj)
		
		trialCompleted(obj, RawEvents)
		
		saveTrial(obj, where)
		
		endSession(obj)		
		
	end % methods
end % methods