depth = -999;

if global.score < 0 { global.score = 0; }
displayScore = lerp(displayScore, global.score, 0.2);

x = camera_get_view_x(view_camera[0]) + 554;
y = camera_get_view_y(view_camera[0]) + 4;
draw_self();

draw_set_font(scoreFnt);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(x+58, y+48, round(displayScore));