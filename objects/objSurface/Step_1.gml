with objPlayer
{
	for (var i = 2; i < other.range; i++)
	{
		if image_index != other.charge { break; }
		if place_meeting(x+i, y, other.id) { hMove += -other.strength/i; align = air; } //R wall
		if place_meeting(x-i, y, other.id) { hMove += other.strength/i; align = air; } //L wall
		if place_meeting(x, y+i, other.id) //Floor
		{
			var clampI = clamp(i, other.range/2, other.range);
			vMove += -other.strength*0.8/clampI;
			align = air;
		}
		if place_meeting(x, y-i, other.id) { vMove += other.strength*0.2/i; align = air; } //Ceil
	}
}