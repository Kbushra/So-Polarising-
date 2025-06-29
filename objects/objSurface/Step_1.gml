with objPlayer
{
	for (var i = 2; i < 96; i++)
	{
		if image_index != other.charge { break; }
		if place_meeting(x+i, y, other.id) { hMove += -other.strength/i; } //R wall
		if place_meeting(x-i, y, other.id) { hMove += other.strength/i; } //L wall
		if place_meeting(x, y+i, other.id) //Floor
		{
			var clampI = clamp(i, 48, 96);
			vMove += -other.strength*0.8/clampI;
		}
		if place_meeting(x, y-i, other.id) { vMove += other.strength*0.2/i; } //Ceil
		align = air;
	}
}