if global.options { exit; }

if !idling { charge = image_index; }

if global.space
{
	charge = !charge;
	audio_play_sound(sndSwitch, 10, false);
	idleEnd();
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

inv--;
if inv >= 45 { camShake(0.5); }
if inv > 0 { angle += 20; }