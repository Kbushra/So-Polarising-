state = !instance_exists(objTrialTimer) ? normal : !normal;
if state == off { image_alpha = 0.3; solid = false; }
else { image_alpha = 1; solid = true; }