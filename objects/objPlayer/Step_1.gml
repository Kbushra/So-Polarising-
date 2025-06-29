if keyboard_check_pressed(vk_space) { image_index = !image_index; }

if align == -1
{
	if place_meeting(x, y+1, objSurface) || place_meeting(x, y-1, objSurface)
	|| place_meeting(x, y+1, objNeutral) { align = horizontal; }
	if place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface)
	{
		if align != horizontal { align = vertical; }
		else { align = horiverti; }
	}
	
	if align == -1 { align = air; }
}