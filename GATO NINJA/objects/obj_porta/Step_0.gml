/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(abriu){cont++};




if(place_meeting(x,y,obj_gato)){

if(pode_abrir)and(obj_gato.BOTAO_ATAQUE2)and(!abriu)and(obj_tela_escura.image_alpha<=0){abriu=true;audio_play_sound(sfx_porta_de_ferro,0,false);}

}

if(cont==10)instance_create(obj_gato.x,obj_gato.y,obj_porta_transicao);

if(cont==30){obj_gato.x=ondeX;obj_gato.y=ondeY;instance_destroy();room_goto(onde);}

pode_abrir = true;