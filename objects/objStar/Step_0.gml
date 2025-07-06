if place_meeting(x, y, objPlayer)
{
	audio_pause_sound(global.mus);
	
	with (objCoinTime) { visible = true; }
	audio_play_sound(sndCoinTimeActive, 10, false);
	audio_play_sound(sndTickFast, 10, false);
	instance_destroy();
}