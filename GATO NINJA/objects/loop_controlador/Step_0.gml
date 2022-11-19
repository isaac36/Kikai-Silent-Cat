/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



draw_set_color(c_white);



if(modoinimigo==1){
cont_luta++;
cont_furtivo--;
audio_sound_gain(loop1,cont_furtivo/100,0);audio_sound_gain(loop3,cont_luta/100,0);audio_sound_gain(loop4,0,0);

	audio_sound_gain(intro2,0,0);//

}else
	if(modoinimigo==2){
cont_luta++;
cont_furtivo--;
audio_sound_gain(loop1,cont_furtivo/100,0);audio_sound_gain(loop4,cont_luta/100,0);audio_sound_gain(loop3,cont_luta/100,0);



	audio_sound_gain(intro2,0,0);//
}else
	if(room==Menu){
	
	
	audio_sound_gain(loop1,cont_furtivo/100,0);audio_sound_gain(loop4,cont_luta/100,0);audio_sound_gain(loop3,cont_luta/100,0);audio_sound_gain(loop2,0,0);
	cont_luta--;
	cont_furtivo--;
	
	audio_sound_gain(intro2,1,0);
	audio_sound_gain(som_creditos,0,0);
	
	}
	else
	if(room==Intro){
	
	
	audio_sound_gain(loop1,cont_furtivo/100,0);audio_sound_gain(loop4,cont_luta/100,0);audio_sound_gain(loop3,cont_luta/100,0);audio_sound_gain(loop2,0,0);
	cont_luta--;
	cont_furtivo--;
	
	audio_sound_gain(intro2,0,0);
	audio_sound_gain(som_creditos,0.3,0);
	
	}else
{
cont_furtivo++;
cont_luta--;
audio_sound_gain(loop4,0,0);audio_sound_gain(loop3,cont_luta/100,0);audio_sound_gain(loop1,cont_furtivo/100,0);audio_sound_gain(loop2,0,0);
audio_sound_gain(intro2,0,0);
audio_sound_gain(som_creditos,0,0);
}



modoinimigo=0;
if(cont_luta>100){cont_luta=100;}
if(cont_luta<0){cont_luta=0;}
if(cont_furtivo>100){cont_furtivo=100;}
if(cont_furtivo<0){cont_furtivo=0;}










if(instance_exists(obj_tela_escura))and(obj_tela_escura.image_alpha>0){

volume = (obj_tela_escura.image_alpha+0.1);

if(volume<0){volume=0;}

audio_sound_gain(loop2,volume,0);
audio_sound_gain(loop1,1-volume,0);

}else{audio_sound_gain(loop2,0,0);volume=0;}





