switch align
{
	case air:
		hMove = lerp(hMove, (global.r-global.l)*spd, 0.1);
		vMove += grav;
		vMove = clamp(vMove, -8, 8);
		break;
	
	case horizontal:
		hMove = lerp(hMove, (global.r-global.l)*spd, 0.1);
		vMove = 0;
		break;
	
	case vertical:
		vMove = lerp(vMove, (global.d-global.u)*spd, 0.1);
		hMove = 0;
		break;
	
	case horiverti:
		hMove = lerp(hMove, (global.r-global.l)*spd, 0.1);
		vMove = lerp(vMove, (global.d-global.u)*spd, 0.1);
		break;
}

if !place_free(x+hMove, y+vMove)
{
	var hMovement = hMove;
	var vMovement = vMove;
	
	while place_free(x+sign(hMovement), y+sign(vMovement))
	{
		var hAdd = sign(hMovement);
		var vAdd = sign(vMovement);
		
		if abs(hMovement) < 1 { hAdd = hMovement; }
		if abs(vMovement) < 1 { vAdd = vMovement; }
		
		x += hAdd;
		y += vAdd;
		hMovement -= hAdd;
		vMovement -= vAdd;
		
		if abs(hMovement) < 0.2 && abs(vMovement) < 0.2 { break; }
	}
	
	for (var i = 0; i < abs(hMovement); i++)
	{
		if !place_free(x+sign(hMovement), y) { break; }
		if abs(hMovement) - i < 1 { x += hMovement - i; break; } else { x += sign(hMovement); }
	}
	
	for (var i = 0; i < abs(vMovement); i++)
	{
		if !place_free(x, y+sign(vMovement)) { break; }
		if abs(vMovement) - i < 1 { y += vMovement - i; break; } else { y += sign(vMovement); }
	}
}
else
{
	x += hMove;
	y += vMove;
}

if hMove != 0 { angle += hMove * -spd/2; }
else { angle += vMove * -spd/2; }

align = -1;