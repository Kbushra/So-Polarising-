if !visible { camShake(3); exit; }

depth = objPlayer.depth;

if place_meeting(x, y, objHFast) || place_meeting(x, y, objVFast)
{
	audio_play_sound(sndMetalBreak, 10, false);
	visible = false;
	solid = false;
	alarm[0] = 10;
}