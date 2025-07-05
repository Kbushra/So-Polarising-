image_alpha = 0;
fadeIn = true;

function returnToHub()
{
	fadeIn = false;
	if instance_exists(objFail) { instance_destroy(objFail); }

	ini_open("Polarising.ini");
	for (var i = 0; i < global.mapCount; i++)
	{ ini_write_real("Scores", $"Map Score {i+1}", global.mapScore[i]); }
	ini_close();

	room_goto(global.hubRm);
	objPlayer.x = global.hubX;
	objPlayer.y = global.hubY;
	global.inHub = true;
}