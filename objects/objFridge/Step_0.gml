depth = objPlayer.depth + 1;

if place_meeting(x, y, objPlayer) && global.hasMeat
{
	global.hasMeat = false;
	global.score += 3000;
	image_index = 1;
	audio_play_sound(sndFridgeFill, 10, false);
}