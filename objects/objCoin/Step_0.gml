if place_meeting(x, y, objPlayer)
{
	global.score += 10;
	audio_play_sound(sndCollect, 10, false);
	instance_destroy();
}