x = objPlayer.x;
y = objPlayer.y;
if objPlayer.hMove != 0 { image_xscale = sign(objPlayer.hMove); }
if abs(objPlayer.hMove) <= objPlayer.spd + 1 { instance_destroy(); }