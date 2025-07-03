depth = -9999;
x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 192 - up;

up += spd;
spd += acc;
if y < -100 { instance_destroy(); }