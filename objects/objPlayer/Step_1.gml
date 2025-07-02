if !idling { charge = image_index; }

if keyboard_check_pressed(vk_space)
{
	charge = !charge;
	audio_play_sound(sndSwitch, 10, false);
	
	sprite_index = sprMagnet;
	image_index = charge;
	idling = false;
	idleTimer = irandom_range(120, 240);
}

if align == -1
{
	if place_meeting(x, y-1, objSurface) || !place_free(x, y+1) { align = horizontal; }
	if place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface)
	{
		if align != horizontal { align = vertical; }
		else { align = horiverti; }
	}
	
	if align == -1 { align = air; }
}