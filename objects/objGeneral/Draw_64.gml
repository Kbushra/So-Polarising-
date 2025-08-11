if global.debug
{
	draw_text(16, 16, "DEBUG ON");
	if keyboard_check_pressed(ord("H")) { instance_create_layer(x, y, layer, objDrunkCut); }
}