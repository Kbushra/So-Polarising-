if !visible { exit; }

if place_meeting(x, y, objPlayer)
{
	global.score += 15;
	audio_play_sound(sndCollect, 10, false);
	instance_destroy();
}

time--;
if time < 120 && time % 4 == 0 { image_alpha = !image_alpha; }
if time <= 0 { visible = false; }