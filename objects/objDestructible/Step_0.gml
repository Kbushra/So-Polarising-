depth = objPlayer.depth;

if place_meeting(x, y, objHFast) || place_meeting(x, y, objVFast)
{ audio_play_sound(sndMetalBreak, 10, false); instance_destroy(); }