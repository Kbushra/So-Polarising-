depth = -9999999;
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if timer <= 0
{
	if repeats == 0 { instance_destroy(); }
	else if visible { alarm[0] = length; visible = false; }
}
timer--;