if global.hFastSnd != -1 && !instance_exists(objHFast)
{
	if os_browser == browser_not_a_browser { audio_sound_gain(global.hFastSnd, 0, 1000); }
	
	if audio_sound_get_gain(global.hFastSnd) < 0.05 || os_browser != browser_not_a_browser
	{ audio_stop_sound(global.hFastSnd); global.hFastSnd = -1; }
}

timeCoinsOn = false;
with objCoinTime { if visible { other.timeCoinsOn = true; break; } }
if !timeCoinsOn && audio_is_playing(sndTickFast) { audio_stop_sound(sndTickFast); }