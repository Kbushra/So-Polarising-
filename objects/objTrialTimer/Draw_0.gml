if room == global.hubRm { instance_destroy(); exit; }

depth = -9998;
x = camera_get_view_x(view_camera[0]) + 341.5;
y = camera_get_view_y(view_camera[0]) + 16;

draw_self();

var prevTime = _time;
_time -= 1/60;
if _time < 0 { _time = 0; }
if prevTime % 1 < _time % 1 { global.score -= 6; }

if _time <= 0 && !instance_exists(objEnd) { instance_create_layer(x, y, "Instances", objEnd); }

var minutes = _time div 60;
var formatMinutes = string(minutes);
var seconds = floor(_time - minutes*60);
var formatSeconds = seconds < 10 ? "0" : "";
formatSeconds += string(seconds);

draw_set_font(timerFnt);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(x, y+16, $"{formatMinutes}:{formatSeconds}");