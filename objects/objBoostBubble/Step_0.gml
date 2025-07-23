if sprite_index == sprBubbleRespawn
{
	
	if image_index >= 2 && image_index < 3 && image_speed != 0
	{
		image_speed = 0;
		alarm[0] = respawnTime * 5; //5 game frames = 1 sprite frame
	}
	if image_index >= image_number - 1 { sprite_index = sprBoostBubble; }
}

if sprite_index != sprBoostBubble || !place_meeting(x, y, objPlayer) ||
	!global.space || global.boosted { exit; }

switch dir
{
	case 0:
		if objPlayer.hMove < strength/2 { objPlayer.hMove = strength; }
		else { objPlayer.hMove += strength/2; }
		break;
	
	case 90:
		objPlayer.vMove -= strength;
		if objPlayer.vMove > -strength/2 { objPlayer.vMove = -strength/2; }
		break;
	
	case 180:
		if objPlayer.hMove < -strength/2 { objPlayer.hMove = -strength; }
		else { objPlayer.hMove -= strength/2; }
		break;
	
	case 270:
		objPlayer.vMove += strength;
		if objPlayer.vMove < strength/2 { objPlayer.vMove = strength/2; }
		break;
}

objPlayer.align = air;

global.boosted = true;
image_index = 0;
sprite_index = sprBubbleRespawn;