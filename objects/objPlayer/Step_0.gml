if align == -1
{
	if place_meeting(x, y+1, objSurface) || place_meeting(x, y-1, objSurface) { align = horizontal; }
	if place_meeting(x+1, y, objSurface) || place_meeting(x-1, y, objSurface)
	{
		if align != horizontal { align = vertical; }
		else { align = horiverti; }
	}
	
	if align == -1 { align = air; }
}

switch align
{
	case air:
		hMove = lerp(hMove, (global.r-global.l)*spd, 0.1);
		vMove += grav;
		vMove = clamp(vMove, -10, 10);
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

if place_meeting(x+hMove, y+vMove, objSurface)
{	
	while !place_meeting(x+sign(hMove), y+sign(vMove), objSurface)
	{
		var hAdd = sign(hMove);
		var vAdd = sign(vMove);
		
		if abs(hMove) < 1 { hAdd = hMove; }
		if abs(vMove) < 1 { vAdd = vMove; }
		
		x += hAdd;
		y += vAdd;
		hMove -= hAdd;
		vMove -= vAdd;
		
		if abs(hMove) < 0.2 && abs(vMove) < 0.2 { break; }
	}
	
	for (var i = 0; i < abs(hMove); i++)
	{
		if place_meeting(x+sign(hMove), y, objSurface) { break; }
		if abs(hMove) - i < 1 { x += hMove - i; break; } else { x += sign(hMove); }
	}
	
	for (var i = 0; i < abs(vMove); i++)
	{
		if place_meeting(x, y+sign(vMove), objSurface) { break; }
		if abs(vMove) - i < 1 { y += vMove - i; break; } else { y += sign(vMove); }
	}
	
	hMove = 0;
	vMove = 0;
}

x += hMove;
y += vMove;

if hMove != 0 { angle += hMove * -spd/2; }
else { angle += vMove * -spd/2; }

align = -1;