#macro air 0
#macro horizontal 1
#macro vertical 2
#macro horiverti 3

#macro positive 0
#macro negative 1
#macro off 0
#macro on 1

randomize();
if os_browser != browser_not_a_browser { window_set_size(1366, 768); audio_master_gain(0.4); }
else { audio_master_gain(0.8); }
audio_master_gain(0);

global.prevX = 0;
global.prevY = 0;

global.score = 0;

global.hasMeat = false;

global.hFastSnd = -1;

timeCoinsOn = false;

room_goto(rmTutorialStart);
objPlayer.x = 341.5;
objPlayer.y = -64;