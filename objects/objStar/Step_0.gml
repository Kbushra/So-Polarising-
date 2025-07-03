if place_meeting(x, y, objPlayer)
{
	instance_activate_object(objCoinTime);
	audio_play_sound(sndCollect, 10, false);
	instance_destroy();
}