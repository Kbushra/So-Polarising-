if place_meeting(x, y, objPlayer)
{
	global.score += 1000;
	audio_play_sound(sndCollect, 10, false);
	instance_destroy();
}