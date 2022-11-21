/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(place_meeting(x,y,obj_gato))and(cont_dialogo==0){
if(!audio_is_playing(sfx_telefone)){audio_play_sound(sfx_telefone,0,0)};
}

if(cont_dialogo==1)and(pode_atender){pode_atender=false;audio_stop_sound(sfx_telefone);audio_play_sound(sfx_atendendo_telefone,1,0)};

if(cont_dialogo<comeco){cont_dialogo=comeco;}
//if(cont_dialogo>fim){global.pause=false;instance_destroy();obj_gato.velocidadeX=0;velocidadeY=0;obj_gato.estado=parado;exit}

if(place_meeting(x,y,obj_gato)){comecou=true};

if(comecou==true){
	
	
obj_PAUSE.modo = "dialogo";
global.dialogo=true;
global.pause=true;






if(keyboard_check_pressed(setupGATO.BOTAO_ATAQUE_SETUP))and(pode_passar){audio_play_sound(sfx_bip,0,0);cont_cena=0;cont_dialogo++;if(animacao[cont_dialogo]==false){pode_passar=true;}else{pode_passar=false}};

if(animacao[cont_dialogo]!=false){


script_execute(animacao[cont_dialogo]);


}



}




if(cont_dialogo>fim){global.pause=false;instance_destroy();obj_gato.velocidadeX=0;velocidadeY=0;obj_gato.estado=parado;exit}