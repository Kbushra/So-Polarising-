x = objPlayer.x;
y = objPlayer.y;
if objPlayer.hMove != 0 { image_xscale = sign(objPlayer.hMove); }

if global.hFastSnd != -1 { audio_sound_pitch(global.hFastSnd, abs(objPlayer.hMove)/(objPlayer.spd + 1)); }
if abs(objPlayer.hMove) <= objPlayer.spd + 1 { instance_destroy(); }