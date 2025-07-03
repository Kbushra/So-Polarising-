depth = objPlayer.depth + 1.5;
image_index = collision_rectangle(x-96,y-96,x+96,y+96,objPlayer,false,true) != noone && !instance_exists(objTrialTimer);

if place_meeting(x, y, objPlayer) && !instance_exists(objTrialTimer)
{
	instance_create_layer(x, y, "Instances", objTimeTrial);
	instance_create_layer(x, y, "Instances", objTrialTimer, { time: trialTime });
	flash(2, 2);
	
	audio_play_sound(sndBell, 10, false);
	alarm[0] = 20;
}