if global.options { exit; }

mask_index = hitbox;

var collided = place_meeting(x, y, objHFast) || place_meeting(x, y, objVFast);
if collided && sprite_index != deathSprite && dies
{
	sprite_index = deathSprite;
	global.score += worth;
	audio_play_sound(sndEnemyKnock, 10, false);
	camShake();
}

if sprite_index == deathSprite
{
	if ySpd < 1 { camShake(); }
	
	image_angle += 5;
	ySpd += 0.1;
	y += ySpd;
	if y >= room_height + sprite_height { instance_destroy(); }
	
	exit;
}

mask_index = hurtbox;

if place_meeting(x, y, objPlayer) && objPlayer.inv <= 0
{
	with objPlayer
	{
		audio_play_sound(sndHit, 10, false);
		global.score -= 100;
		
		if abs(hMove) > 0.1 { hMove *= -1.5; } else { hMove = -5; }
		if abs(vMove) > 0.1 { vMove *= -1.5; } else { vMove = -5; }
		vMove = clamp(vMove, -4, 4);
		inv = 60;
		idleEnd();
	}
}

mask_index = hitbox;