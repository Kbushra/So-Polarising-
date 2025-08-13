if sprite_index == sprBubbleRespawn2
{
	if image_index >= 2 { x = origX; y = origY; }
	if image_index >= image_number - 1 { sprite_index = sprMoveBubble; }
	enter = false;
	exit;
}

if !enter && place_meeting(x, y, objPlayer)
{
	objPlayer.x = lerp(objPlayer.x, x, 0.2);
	objPlayer.y = lerp(objPlayer.y, y, 0.2);
	objPlayer.hMove = 0;
	objPlayer.vMove = 0;
	if alarm[0] <= 0 { alarm[0] = 15; }
}

if enter
{
	if !audio_is_playing(sndInBubble) { audio_play_sound(sndInBubble, 10, true); }
	x = objPlayer.x;
	y = objPlayer.y;
	
	if !place_free(x, y) || instance_exists(objDeath)
	{
		image_index = 0;
		sprite_index = sprBubbleRespawn2;
		audio_play_sound(sndPop, 10, false);
		audio_stop_sound(sndInBubble);
		
		with objDeathTrig { active = true; }
	}
}