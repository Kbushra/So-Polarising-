x = objPlayer.x;
y = objPlayer.y;
audio_sound_gain(snd, clamp(audio_sound_get_gain(snd) + 1, 0, 3.5), 800);