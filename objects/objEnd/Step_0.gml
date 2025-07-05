depth = -999999;
if fadeIn { image_alpha += 0.01; } else { image_alpha -= 0.05; }
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

image_alpha = clamp(image_alpha, 0, 1);

if image_alpha >= 1 && fadeIn
{
	falseControls();
	
	room_persistent = false;
	if array_length(global.rmCount) > 0 { room_goto(array_shift(global.rmCount)); exit; }
	
	if !fail { returnToHub(); }
	else if !instance_exists(objFail)
	{
		instance_create_layer(x+341.5, y+192, "Instances", objFail);
		alarm[0] = 120;
	}
}

if image_alpha <= 0 && !fadeIn { instance_destroy(); }