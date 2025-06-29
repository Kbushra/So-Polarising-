// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camPos(lerp_)
{
	var clampX = clamp(objPlayer.x - 341.5, 0, room_width - 683);
	var clampY = clamp(objPlayer.y - 192, 0, room_height - 384);
	if lerp_
	{
		var lerpX = lerp(camera_get_view_x(view_camera[0]), clampX, 0.1);
		var lerpY = lerp(camera_get_view_y(view_camera[0]), clampY, 0.1);
	}
	else { var lerpX = clampX; var lerpY = clampY; }
	
	camera_set_view_pos(view_camera[0], lerpX, lerpY);
}