#macro air 0
#macro horizontal 1
#macro vertical 2
#macro horiverti 3

#macro positive 0
#macro negative 1
#macro off 0
#macro on 1

randomize();
if os_browser != browser_not_a_browser { window_set_size(1366, 768); audio_master_gain(0.25); }
else { audio_master_gain(0.6); }
//audio_master_gain(0);

global.debug = false;

global.prevX = 0;
global.prevY = 0;

//Camera lag
global.xOffset = 0;
global.yOffset = 0;

global.rmCount = [];

global.score = 0;

global.hasMeat = false;

global.hFastSnd = -1;
global.mus = -1;

timeCoinsOn = false;

global.hubX = 336;
global.hubY = -32;
global.hubRm = rmHubTutorial;

global.mapCount = 2;
global.progressCount = 2;

ini_open("Polarising.ini");
for (var i = 0; i < global.mapCount; i++)
{ global.mapScore[i] = ini_read_real("Scores", $"Map Score {i+1}", -1); }
for (var i = 0; i < global.progressCount; i++)
{
	global.progress[i] = ini_read_real("Progress", $"Progression {i+1}", false);
	global.unlocked[i] = false;
}
ini_close();

global.mapName[0] = "Tutorial";
global.mapRank[0,0] = 1000; //D
global.mapRank[0,1] = 2500; //C
global.mapRank[0,2] = 5000; //B
global.mapRank[0,3] = 7500; //A
global.mapRank[0,4] = 9500; //S

global.mapName[1] = "Electro Waters";
global.mapRank[1,0] = 1000; //D
global.mapRank[1,1] = 2500; //C
global.mapRank[1,2] = 5000; //B
global.mapRank[1,3] = 7500; //A
global.mapRank[1,4] = 9500; //S

if !file_exists("Polarising.ini")
{
	global.hubMap = 0;
	global.inHub = false;
	room_goto(rmTutorialStart);
	objPlayer.x = 341;
	objPlayer.y = -64;
}
else
{
	global.hubMap = -1;
	global.inHub = true;
	room_goto(rmHubEntrance);
	objPlayer.x = 160;
	objPlayer.y = -32;
}

/*
global.hubMap = 0;
global.inHub = false;
room_goto(rmCameraTest);
objPlayer.x = 0;
objPlayer.y = 0;