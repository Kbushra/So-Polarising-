if place_meeting(x, y, objPlayer)
{
	instance_activate_object(objCoinTime);
	audio_play_sound(sndCoinTimeActive, 10, false);
	audio_play_sound(sndTickFast, 10, false);
	instance_destroy();
}