if place_meeting(x, y, objPlayer)
{
	global.hasMeat = true;
	audio_play_sound(sndMeatCollect, 10, false);
	instance_destroy();
}