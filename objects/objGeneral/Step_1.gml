var clampX = clamp(objPlayer.x - 341.5, 0, room_width - 683);
var clampY = clamp(objPlayer.y - 192, 0, room_height - 384);
var lerpX = lerp(camera_get_view_x(view_camera[0]), clampX, 0.1);
var lerpY = lerp(camera_get_view_y(view_camera[0]), clampY, 0.1);
camera_set_view_pos(view_camera[0], lerpX, lerpY);

if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

global.l = keyboard_check(vk_left) || keyboard_check(ord("A"));
global.r = keyboard_check(vk_right) || keyboard_check(ord("D"));
global.u = keyboard_check(vk_up) || keyboard_check(ord("W"));
global.d = keyboard_check(vk_down) || keyboard_check(ord("S"));