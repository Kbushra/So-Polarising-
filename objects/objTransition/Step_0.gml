depth = -99999;
global.optionsEnable = false;

if image_index > 3 && !transition
{
	room_goto(targRoom);
	objPlayer.x = targX;
	objPlayer.y = targY;
	global.prevX = targX;
	global.prevY = targY;
	if toggleHub
	{
		global.inHub = !global.inHub;
		global.hubMap = map;
	}
	
	transition = true;
}

if room == targRoom { camPos(false); }

if image_index > 7 { instance_destroy(); global.optionsEnable = true; exit; }

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);