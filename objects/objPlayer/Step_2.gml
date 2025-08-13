if global.options { exit; }

if global.r-global.l != 0 && abs(hMove) > spd - 0.2
{
	if abs(hMove) > spd + 1
	{
		hSurplus += 0.002;
		if !instance_exists(objHFast) { instance_create_layer(x, y, "Instances", objHFast); }
	}
	else { hSurplus += 0.01; }
}
else { hSurplus = 1; hMove = clamp(hMove, -spd, spd); }

if align == vertical || align == horiverti
{
	if global.d-global.u != 0 && abs(vMove) > spd - 0.2
	{
		if abs(vMove) > spd + 1 { vSurplus += 0.004; }
		else { vSurplus += 0.02; }
	}
	else { vSurplus = 1; vMove = clamp(vMove, -spd, spd); }
}
else { vSurplus = 1; }

switch align
{
	case air:
		hMove = lerp(hMove, (global.r-global.l)*spd*hSurplus, 0.1);
		if vMove < 10 { vMove += grav; }
		break;
	
	case horizontal:
		hMove = lerp(hMove, (global.r-global.l)*spd*hSurplus, 0.1);
		vMove = 0;
		break;
	
	case vertical:
		vMove = lerp(vMove, (global.d-global.u)*spd*vSurplus, 0.1);
		hMove = 0;
		break;
	
	case horiverti:
		hMove = lerp(hMove, (global.r-global.l)*spd*hSurplus, 0.1);
		vMove = lerp(vMove, (global.d-global.u)*spd*vSurplus, 0.1);
		break;
}

//If softlocked (unlikely), dont do any collisions or anything at all
if !place_free(x, y) { exit; }

if !place_free(x+sign(hMove), y) && !place_meeting(x+sign(hMove), y, objSurface) { hMove = 0; }
if !place_free(x, y+sign(vMove)) && !place_meeting(x, y+sign(vMove), objSurface) { vMove = 0; }

if abs(vMove) > 7.8 { if !instance_exists(objVFast) { instance_create_layer(x, y, "Instances", objVFast); } }
else if instance_exists(objVFast) { instance_destroy(objVFast); }

if align != air
{
	if align != vertical && !place_free(x+global.r-global.l, y) { hMove = 0; }
	if align != horizontal && !place_free(x, y+global.d-global.u) { vMove = 0; }
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

if global.r || global.l { global.xOffset += sign(hMove)*1.5; }
else { global.xOffset = lerp(global.xOffset, 0, 0.2); }

if sign(global.xOffset) != sign(hMove) { global.xOffset = lerp(global.xOffset, 0, 0.2); }

if global.d || global.u || align == air { global.yOffset += sign(vMove)*1.5; }
else { global.yOffset = lerp(global.yOffset, 0, 0.2); }

if sign(global.yOffset) != sign(vMove) { global.yOffset = lerp(global.yOffset, 0, 0.2); }

global.xOffset = clamp(global.xOffset, -360, 360);
global.yOffset = clamp(global.yOffset, -250, 250);

if hMove != 0 { angle += hMove * -spd/2; }
else { angle += vMove * -spd/2; }

align = -1;