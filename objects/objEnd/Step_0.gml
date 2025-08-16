depth = -999999;
if fadeIn { image_alpha += 0.01; } else { image_alpha -= 0.05; }
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

global.optionsEnable = false;

if global.mus != -1 && audio_sound_get_gain(global.mus) <= 0.01
{ audio_stop_sound(global.mus); global.mus = -1; }

instance_destroy(objTransition);
instance_destroy(objDeath);

image_alpha = clamp(image_alpha, 0, 1);

if image_alpha >= 1 && fadeIn
{
	falseControls();
	
	room_persistent = false;
	if array_length(global.rmCount) > 0 { room_goto(array_shift(global.rmCount)); exit; }
	
	if !fail { returnToHub(); }
	else if !instance_exists(objFail)
	{
		instance_create_layer(x, y, "Instances", objFail);
		alarm[0] = 240;
	}
}

if image_alpha <= 0 && !fadeIn { instance_destroy(); global.optionsEnable = true; }