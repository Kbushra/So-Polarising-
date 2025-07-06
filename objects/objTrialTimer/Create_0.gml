timerFnt = font_add_sprite_ext(sprTimerFnt, "0123456789:", true, 2);
audio_stop_sound(global.mus);
global.mus = audio_play_sound(musTimeTrial, 10, false);