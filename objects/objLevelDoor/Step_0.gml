if place_meeting(x, y, objPlayer) && !instance_exists(objTransition)
{
	instance_create_layer(x, y, "Instances", objTransition);
	objTransition.targRoom = targRoom;
	objTransition.targX = targX;
	objTransition.targY = targY;
	objTransition.toggleHub = true;
	
	global.hubRm = room;
	global.hubX = hubX;
	global.hubY = hubY;
	global.hubMap = hubMap;
}