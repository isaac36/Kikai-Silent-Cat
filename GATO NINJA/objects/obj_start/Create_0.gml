start_count=0;
centerX = room_width/2;
centerY = room_height/2;

alpha = 0;

telainicial = OST_telainicial;

fade = false;
audio_sound_gain(telainicial, 1, 0);
audio_play_sound(telainicial, 1, true);

confirm = snd_ok;
confirm_count = 1;

