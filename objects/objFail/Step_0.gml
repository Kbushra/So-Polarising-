depth = objEnd.depth - 1;
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
if image_index > image_number - 1 { image_index = image_number - 1; }

if image_index >= 9 && !played { audio_play_sound(sndStone, 10, false); played = true; }