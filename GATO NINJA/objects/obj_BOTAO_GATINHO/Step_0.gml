/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(instance_exists(setupGATO)){

movimento_pendular = movimento_pendular + velocidade_pendular;

if(movimento_pendular>10){velocidade_pendular-=0.05};
if(movimento_pendular<-10){velocidade_pendular+=0.05};


if(velocidade_pendular>1){velocidade_pendular=5}
if(velocidade_pendular<-1){velocidade_pendular=-5}



x = x + movimento_pendular/100;

if(setupGATO.cursorMenu==cursorMenu){

sprite_index = spr_faca;

draw_sprite_ext(spr_faca,0,0,0,5,5,0,c_white,1);

if(keyboard_check_pressed(setupGATO.BOTAO_ATAQUE_SETUP))and(setupGATO.apertou==false){



setupGATO.apertou = true;instance_create(x,y,obj_transicao_menu);alarm[0]=50;}
	
	






}else{sprite_index= sem_mascara;}



}