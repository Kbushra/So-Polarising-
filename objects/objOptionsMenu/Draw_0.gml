draw_self();

draw_set_font(fntNormal);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_transformed(optionX, optionY[0], "Volume", 2, 2, 0);
draw_sprite(sprSlideBar, 0, optionX + 100, optionY[0] + 10);
draw_sprite_ext(sprSlideBar, 1, optionX + 100, optionY[0] + 10, objSelectMagnet.barScale, 1,
	0, c_white, 1);

draw_text_transformed(optionX, optionY[1], "Visible HUD", 2, 2, 0);
draw_sprite(sprCheckMark, global.hud, optionX + 150, optionY[1]);

draw_text_transformed(optionX, optionY[2], "Info", 2, 2, 0);
if showInfo
{
	draw_text_transformed(infoX, infoY[0], "Controls", 2, 2, 0);
	draw_text_transformed(infoX, infoY[1], "Score", 2, 2, 0);
	draw_text_transformed(infoX, infoY[2], "Mechanics", 2, 2, 0);
	draw_text_transformed(infoX, infoY[3], "Goal", 2, 2, 0);
	
	draw_text_ext_transformed(infoX + 140, infoY[0], info[objSelectMagnet.infoSelect],
		12, 230, 2, 2, 0);
}

draw_text_transformed(optionX, optionY[3], "Return", 2, 2, 0);
draw_text_transformed(optionX, optionY[4], "Quit Game", 2, 2, 0);