["You've got Mail!", true] spawn doquickmsg;

awaitingmail append mail;

mail = awaitingmail;

awaitingmail = [];

[player,"Hello! You have new mail awaiting you. You can pick it up from either the post office or your home.","Silver Lake"] remoteExec ["server_fnc_sendMessage",2];