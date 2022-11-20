/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(fechar==true){

pode_abrir=false

};

if(abriu){cont++;global.podedarpause=false;};

if(place_meeting(x,y,obj_gato)){

if(pode_abrir)and(obj_gato.BOTAO_ATAQUE2)and(!abriu)and(obj_tela_escura.image_alpha<=0){abriu=true;audio_play_sound(sfx_porta_de_ferro,0,false);}

}



if(cont==10)instance_create(obj_gato.x,obj_gato.y,obj_porta_transicao);

if(cont==40){obj_gato.x=ondeX;obj_gato.y=ondeY;instance_destroy();room_goto(onde);global.podedarpause=true;


global.ondeX=ondeX;
global.ondeY=ondeY;


//salvar variaveis
global.chavea=obj_gato.chavea;
global.chaveb=obj_gato.chaveb;
global.chavefinal=obj_gato.chavefinal;



	}

if(fechar==false)pode_abrir = true;