if audio_is_playing(musTimeTrial) && audio_sound_get_track_position(global.mus) >= 40
{ audio_sound_set_track_position(global.mus, 24); }

if instance_exists(objTrialTimer) || instance_exists(objTrialButton) || instance_exists(objEnd) { exit; }

switch global.hubMap
{
	case 0:
		if global.mus == -1 { global.mus = audio_play_sound(musTutorial, 10, false); }
		if audio_sound_get_track_position(global.mus) >= 48 { audio_sound_set_track_position(global.mus, 32); }
		break;
}

if global.mus != -1 { audio_sound_gain(global.mus, 1, 50); }