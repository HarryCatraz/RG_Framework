//player select

//[8832.93,1567.56,0.00088501]
//cam pos [8832.93,1566.48,0.000883102]
//[8832.93,1565.37,0.000883102]
disableSerialization;
private["_male","_female","_dummy"];

client_kcCamera  = "CAMERA" camCreate [7797.61,326.183,2.57719];
showCinemaBorder true;   
client_kcCamera cameraEffect ["EXTERNAL", "BACK"];                             
client_kcCamera camSetPos [8193.63,2268.02,0.00144625];  
client_kcCamera camSetFOV 0.85;  

lastsync = time - 3;

charselection = true;
playMusic  "npIntro";
uisleep 15;

[
	[
		["It is the year 2053.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],	
		["You have arrived to Silver Lake.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"]
	]
] spawn BIS_fnc_typeText;


_dummy = "C_man_polo_2_F" createVehicleLocal [8192.7,2273.28,0.00145411];
_dummy hideobject true;
_dummy setpos [8192.7,2273.28,0.00145411];
_dummy setdir 162;
_dummy setFace (face player);
client_kcCamera camSettarget _dummy; 
client_kcCamera camCommit 120;

uisleep 10;


_script = [
	[
		["Silver Lake recently seceded from the USA,","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["to claim its independence.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };


_script = [
	[
		["It has a fully functional Government,","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["with a Mayor, Senate, and Judicial Courts.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };

_script = [
	[
		["Your voice can easily be heard,","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["using your right to vote.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };

_script = [
	[
		["However, despite being a democratic society,","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Silver Lake is filled with Criminals and Felons.","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };

_script = [
	[
		["Now is the time to choose your path.","<t align = 'center' shadow = '1' size = '0.5' font='PuristaBold'>%1</t><br/>"],
		["Stand your ground or claim your empire...","<t align = 'center' shadow = '1' font='PuristaBold' size = '0.5'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };


_male = "C_man_polo_2_F" createVehicleLocal [8193.69,2273.65,0.00145388];
removeuniform _male;
_male allowdamage false;
_male setdir 160;  
_male setpos [8193.69,2273.65,0.00145388];

_female = "C_man_polo_2_F" createVehicleLocal [8191.64,2272.88,0.00145125];
_female allowdamage false;
_female adduniform "female_default_1";
_female setdir 158;  
_female setpos [8191.64,2272.88,0.00145125];
_female setFace (face player);
uisleep 15;

_script = [
	[
		["Choose your sex","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["This can be changed; Though, it may involve surgery.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;


createdialog "charselect";
while{charselection} do { uisleep 0.05; _male setdir ((getdir _male) + 15); _female setdir ((getdir _female) - 15); };

deletevehicle _female;
deletevehicle _male;
deletevehicle _dummy;

waitUntil { scriptDone _script };

_script = [
	[
		["Welcome to Silver Lake!","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["Use your Windows key to interact with everything.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

waitUntil { scriptDone _script };

_script = [
	[
		["Start by interacting with your trailer.","<t align = 'center' shadow = '1' size = '0.5'>%1</t><br/>"],
		["You have mail there. Have fun.","<t align = 'center' shadow = '1' size = '0.4' font='PuristaBold'>%1</t>"]
	]
] spawn BIS_fnc_typeText;

removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;

deadPlayer = false;
godmode = false;

player adduniform "U_C_TeeSurfer_shorts_1";

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "Itemwatch";
player additem "cg_tabletd";
player assignitem "cg_tabletd";

["Add","license",0] call client_fnc_sustain;

player setvariable ["loaded",4,false];