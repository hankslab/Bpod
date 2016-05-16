classdef (Abstract) ProtocolObj < handle

	properties (SetAccess=private,GetAccess=public)
		settings % a struct with the protocol level settings
		n_done_trials = 0;
		n_started_trials = 0;

	end

	methods
		function ProtocolObj(by, value)
			% by can be 'subject', 'subjID', 'settings' 
			% if by == 'subject' value should be a string
			% if by == 'subjID' value should be an int
			% if by == 'settings' value should be a struct

		end
		function init(obj)
		end
		function prepareNextTrial(obj)
		end
		function generateSM(obj)
		end
		function sendSM(obj)
		end
		function run(obj)
		end
		function trialCompleted(obj)
		end
		function saveTrial(obj)
		end

		
	end


end