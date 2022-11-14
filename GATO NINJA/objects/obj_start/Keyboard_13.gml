audio_sound_gain(telainicial, 0, 750);

confirm_count++;
if (confirm_count == 2){audio_play_sound(confirm, 0, false);}

fade = true;

action_set_alarm(50, 0);
