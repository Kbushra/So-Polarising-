depth = -99997;

if keyboard_check_pressed(vk_escape) && !objSelectMagnet.active
{ global.options = !global.options; }

if !global.optionsEnable { global.options = false; }

x = camera_get_view_x(view_camera[0]);

if !global.options
{
	yChange = lerp(yChange, 0, 0.1);
	
	if audio_is_playing(sndOptions) { audio_stop_sound(sndOptions); }
	audio_group_set_gain(audiogroup_default, 1, 0);
}
else
{
	yChange = lerp(yChange, 384, 0.1);

	if !audio_is_playing(sndOptions) { audio_play_sound(sndOptions, 10, true); }
	audio_group_set_gain(audiogroup_default, 0, 0);
}

y = camera_get_view_y(view_camera[0]) + yChange;