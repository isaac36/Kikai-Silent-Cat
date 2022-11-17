/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
audio_group_load(audiogroup_default);
if(!audio_is_playing(loop1)){audio_play_sound(loop1,0,true)}
if(!audio_is_playing(loop2)){audio_play_sound(loop2,0,true)}
if(!audio_is_playing(loop3)){audio_play_sound(loop3,0,true)}
if(!audio_is_playing(loop4)){audio_play_sound(loop4,0,true)}
audio_sound_gain(loop3,0,0);
audio_sound_gain(loop4,0,0);


modoinimigo = 0;
cont_luta = 0;
cont_furtivo = 0;
volume=0;
