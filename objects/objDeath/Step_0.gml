depth = -99999;

global.optionsEnable = false;

if image_index > 3 && !transition
{
	objPlayer.x = global.prevX;
	objPlayer.y = global.prevY;
	objPlayer.hMove = 0;
	objPlayer.vMove = 0;
	camPos(false);
	
	transition = true;
}

if image_index > 7 { instance_destroy(); global.optionsEnable = true; exit; }

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);