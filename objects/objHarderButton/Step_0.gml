depth = objPlayer.depth + 3;
image_index = collision_rectangle(x-96,y-96,x+96,y+96,objPlayer,false,true) != noone && !done;

if place_meeting(x, y, objPlayer) && !done
{
	objTrialTimer._time = floor(objTrialTimer._time * magnifier) + (objTrialTimer._time % 1);
	global.score += 3000;
	audio_play_sound(sndHarderActive, 10, false);
	
	done = true;
}