function trialCompleted(obj, RawEvent)

	% This function is called after RunStateMatrix is called
	obj.n_done_trials = obj.n_done_trials + 1;

	% Generally you would also increment choice_history and hit_history.