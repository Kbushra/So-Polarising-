depth = -99999;

if image_index > 3 && !transition
{
	room_goto(targRoom);
	objPlayer.x = targX;
	objPlayer.y = targY;
	global.prevX = targX;
	global.prevY = targY;
	camPos(false);
	
	transition = true;
}

if image_index > 7 { instance_destroy(); exit; }

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);