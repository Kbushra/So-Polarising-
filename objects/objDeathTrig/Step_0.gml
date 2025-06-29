if place_meeting(x, y, objPlayer) && !instance_exists(objDeath)
{ instance_create_layer(x, y, "Instances", objDeath); }