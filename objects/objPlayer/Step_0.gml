if align != air && global.r-global.l == 0 && global.d-global.u == 0 { idleTimer--; }
else { idleTimer = irandom_range(120, 240); idling = false; }

if idleTimer <= 0
{
	angle = lerp(angle, angle + angle_difference(0, angle), 0.1);
	if abs(angle_difference(0, angle)) <= 5 && !idling
	{
		audio_play_sound(choose(sndIdle1, sndIdle2), 10, false);
		var ind = irandom_range(1, 5);
		var prefix = charge == 0 ? "P" : "N";
		sprite_index = asset_get_index($"spr{prefix}Idle{ind}");
		image_index = 0;
		
		idling = true;
	}
}

var idleDone = idling && image_index >= image_number - 1;
var idleCancel = !idling && sprite_index != sprMagnet;
if idleDone || idleCancel { idleEnd(); }