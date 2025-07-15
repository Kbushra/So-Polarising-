depth = objPlayer.depth - 1;

if global.progress[progressId] && alarm[0] < 0
{
	alarm[0] = 60;
	audio_play_sound(sndLock, 10, false);
}

if image_index >= image_number - 1 { global.unlocked[progressId] = true; instance_destroy(); }