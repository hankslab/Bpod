classdef ChaseLights < ProtoObj
% This class defines a Protocol Object. 
% The methods of this class match the 'actions' that were implemented in BControl style classes.
% Instantiations of this class should not directly access the global BpodSystem but rather get passed relevant elements of that global through methods.
	properties (SetAccess=private,GetAccess=public)
		

	end % properties

	methods
		function obj=LightChasing(by, value)
			% by can be 'subject', 'subjID', 'settings' 
			% if by == 'subject' value should be a string
			% if by == 'subjID' value should be an int
			% if by == 'settings' value should be a struct



		end

		
	end % methods
end % methods