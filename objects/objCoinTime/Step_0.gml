if place_meeting(x, y, objPlayer)
{
	global.score += 15;
	audio_play_sound(sndCollect, 10, false);
	instance_destroy();
}

time--;
if time < 120 && time % 4 == 0 { visible = !visible; }
if time <= 0 { instance_deactivate_object(id); }