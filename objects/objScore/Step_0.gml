visible = !global.inHub && global.hud;
depth = -999;

if global.score < 0 { global.score = 0; }
displayScore = lerp(displayScore, global.score, 0.2);

x = camera_get_view_x(view_camera[0]) + 554;
y = camera_get_view_y(view_camera[0]) + 4;