depth = objPlayer.depth - 1;
if _end && place_meeting(x, y, objPlayer)
{
	if !instance_exists(objEnd) { instance_create_layer(x, y, "Instances", objEnd, { fail: false }); }
	else { objEnd.fail = false; }
	if global.hubMap != -1 && global.score > global.mapScore[global.hubMap]
	{ global.mapScore[global.hubMap] = global.score; }
}