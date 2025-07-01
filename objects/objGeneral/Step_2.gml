if global.hFastSnd != -1 && !instance_exists(objHFast)
{
	audio_sound_gain(global.hFastSnd, 0, 1000);
	
	if audio_sound_get_gain(global.hFastSnd) < 0.05
	{ audio_stop_sound(global.hFastSnd); global.hFastSnd = -1; }
}