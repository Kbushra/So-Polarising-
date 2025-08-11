var prefix = objPlayer.charge == 0 ? "P" : "N";
objPlayer.sprite_index = asset_get_index($"spr{prefix}Drunk");
objPlayer.idling = true;
objPlayer.idleTimer = 999;
alarm[0] = 30;

t = 0;