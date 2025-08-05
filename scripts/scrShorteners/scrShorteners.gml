// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camPos(lerp_)
{
	var centreX = objPlayer.x - 341.5;
	var centreY = objPlayer.y - 192;
	
	if lerp_ { centreX += global.xOffset; centreY += global.yOffset; }
	
	var clampX = clamp(centreX, 0, room_width - 683);
	var clampY = clamp(centreY, 0, room_height - 384);
	
	if clamp(objPlayer.x - 341.5, 0, room_width - 683) != objPlayer.x - 341.5 { global.xOffset = 0; }
	if clamp(objPlayer.y - 192, 0, room_height - 384) != objPlayer.y - 192 { global.yOffset = 0; }
	
	if !lerp_ { var lerpX = clampX; var lerpY = clampY; }
	
	if lerp_
	{
		var lerpX = lerp(camera_get_view_x(view_camera[0]), clampX, 0.1);
		var lerpY = lerp(camera_get_view_y(view_camera[0]), clampY, 0.1);
	}
	
	camera_set_view_pos(view_camera[0], lerpX, lerpY);
}

function camShake(intensity = 1)
{
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) + choose(-intensity, intensity),
		camera_get_view_y(view_camera[0]) + choose(-intensity, intensity));
}

function falseControls()
{
	global.l = false;
	global.r = false;
	global.u = false;
	global.d = false;
	global.space = false;
}

function idleEnd()
{
	sprite_index = sprMagnet;
	image_index = charge;
	idling = false;
	idleTimer = irandom_range(120, 240);
}

function flash(len = 1, reps = 0) { instance_create_layer(x, y, "Instances", objFlash, { length: len, repeats: reps }) }