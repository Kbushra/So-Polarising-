depth = objOptionsMenu.depth - 1;

if select == 2 && active
{
	x = objOptionsMenu.infoX - 20;
	y = lerp(y, objOptionsMenu.infoY[infoSelect] + 15, 0.2);
}
else
{
	x = objOptionsMenu.optionX - 20;
	y = lerp(y, objOptionsMenu.optionY[select] + 15, 0.2);
}

if !global.options { select = 0; infoSelect = 0; active = false; exit; }

if select == 2 && active
{
	infoSelect = (infoSelect + global.dP - global.uP + 4) % 4;
	image_angle = lerp(image_angle, 180*select + 180*infoSelect + 180, 0.1);
}
else
{
	if !active
	{
		select = (select + global.dP - global.uP + 6) % 6;
		if global.inHub && select == 3 { select += global.dP - global.uP; }
	}
	image_angle = lerp(image_angle, 180*select, 0.1);
}

if global.space
{
	audio_play_sound(sndSwitch, 10, false);
	image_xscale *= -1;
	active = !active;

	if select == 1 { global.hud = !global.hud; active = false; }
	if select == 2 { objOptionsMenu.showInfo = !objOptionsMenu.showInfo; }
	if select == 3
	{ instance_create_layer(x, y, "Instances", objEnd, { fail: false }); global.options = false; }
	if select == 4 { global.options = false; }
	if select == 5 { game_end(); }
	
	exit;
}

if select == 0 && active
{
	if global.rP || global.lP
	{
		barScale += (global.rP - global.lP)*1.5/50;
		delay = 30;
	}
		
	delay--;
	if delay <= 0 { barScale += (global.r - global.l)/50; }
		
	barScale = clamp(barScale, 0, 1);
	audio_master_gain(barScale);
}