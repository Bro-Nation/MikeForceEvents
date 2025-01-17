[
	player,		// Object the action is attached to
	"Gather Enemy Intel",		// Title of the action
	"custom\holdactions\holdAction_documents_ca.paa",	// Idle icon shown on screen
	"custom\holdactions\holdAction_documents_ca.paa",	// Progress icon shown on screen
	"(typeOf cursorObject in ['Land_Map_unfolded_F','Land_Map_unfolded_Malden_F', 'vn_b_prop_cabinet_02'] && player distance cursorObject < 5)",	// Condition for the action to be shown
	"player distance cursorObject < 10",						// Condition for the action to progress
	{},	// Code executed when action starts
	{},	// Code executed on every progress tick
	{
		[cursorObject, player] remoteExec ["vn_mf_fnc_sites_remoteactions_reveal_intel", 2];
	},// Code executed on completion
	{},	// Code executed on interrupted
	[],													// Arguments passed to the scripts as _this select 3
	15,													// Action duration [s]
	100,													// Priority
	false,											// Remove on completion
	false												// Show in unconscious state
] call BIS_fnc_holdActionAdd;
