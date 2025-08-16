if place_meeting(x, y, objPlayer) && active
{
	if !hit && !instance_exists(objDeath)
	{
		if !instance_exists(objEnd) { audio_play_sound(sndPowerDown, 10, false); }
		alarm[0] = 12;
		hit = true;
	}
	
	if speedLoss
	{
		objPlayer.hMove = lerp(objPlayer.hMove, 0, 0.2);
		objPlayer.vMove = lerp(objPlayer.vMove, 0, 0.2);
	}
}