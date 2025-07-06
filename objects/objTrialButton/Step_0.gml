depth = objPlayer.depth + 3;
image_index = collision_rectangle(x-96,y-96,x+96,y+96,objPlayer,false,true) != noone && !instance_exists(objTrialTimer);

if global.mus != -1 && !audio_is_playing(musTimeTrial)
{
	if os_browser == browser_not_a_browser { audio_sound_gain(global.mus, 0, 500); }
	else { audio_sound_gain(global.mus, 0, 0); }
}

if place_meeting(x, y, objPlayer) && !instance_exists(objTrialTimer)
{
	instance_create_layer(x, y, "Instances", objTimeTrial);
	instance_create_layer(x, y, "Instances", objTrialTimer, { _time: trialTime });
	flash(2, 2);
	
	audio_play_sound(sndBell, 10, false);
	alarm[0] = 20;
}