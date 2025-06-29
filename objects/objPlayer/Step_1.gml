switch align
{
	case air:
		hMove = lerp(hMove, (global.r-global.l)*spd, 0.1);
		vMove += grav;
		vMove = clamp(vMove, 0, 10);
		break;
	
	case horizontal:
		hMove = lerp(hMove, (global.r-global.l)*spd, 0.1);
		vMove = 0;
		break;
	
	case vertical:
		vMove = lerp(vMove, (global.d-global.u)*spd, 0.1);
		hMove = 0;
		break;
}