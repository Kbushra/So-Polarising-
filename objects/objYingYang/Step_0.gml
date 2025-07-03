if place_meeting(x, y, objPlayer)
{
	global.score += 1000;
	audio_play_sound(sndBigCollect, 10, false);
	instance_destroy();
}