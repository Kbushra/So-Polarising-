with objPlayer
{
	for (var i = 2; i < other.range; i++)
	{
		if image_index != other.charge { break; }
		if place_meeting(x+i, y, other.id) //R wall
		{
			hMove += -other.strength/i;
			if align != horizontal { align = air; }
		}
		if place_meeting(x-i, y, other.id) //L wall
		{
			hMove += other.strength/i;
			if align != horizontal { align = air; }
		}
		if place_meeting(x, y+i, other.id) //Floor
		{
			var clampI = clamp(i, other.range/2, other.range);
			vMove += -other.strength*0.8/clampI;
			align = air;
		}
		if place_meeting(x, y-i, other.id) { vMove += other.strength*0.2/i; align = air; } //Ceil
	}
}