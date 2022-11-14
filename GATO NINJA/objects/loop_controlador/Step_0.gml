/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x=obj_gato.x;
y=obj_gato.y;

draw_set_color(c_white);

if(obj_tela_escura.image_alpha>0){

volume = (obj_tela_escura.image_alpha+0.1);

if(volume<0){volume=0;}

audio_sound_gain(var_loop2,volume,0);
audio_sound_gain(var_loop1,1-volume,0);

}else{audio_sound_gain(var_loop2,0,0);volume=0;}

if(modoinimigo=="luta"){
cont_luta++;
if(cont_luta==10){audio_sound_gain(var_loop1,0,500);audio_sound_gain(var_loop3,1,500);}
cont_furtivo = 0;

}else{
cont_furtivo++;
if(cont_furtivo==11){cont_luta=0;cont_furtivo=10;audio_sound_gain(var_loop3,0,500);audio_sound_gain(var_loop1,1,500);}
}



modoinimigo=false;