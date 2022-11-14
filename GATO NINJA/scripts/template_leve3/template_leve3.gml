// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_leve3(){
	sprite_index = img_ataque_leve_cima;
	
	if(cont_animacao>17){
	velocidadeXadd=0.7*dir;}

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	/*if(!chao){
	if(BOTAO_ESQUERDA){dirV=-1;lado="esquerda"}
	if(BOTAO_DIREITA){dirV=1;lado="direita"}
	}*/
    
    image_index = 0;
	if(cont_animacao>6){image_index=1};
    if(cont_animacao>12){image_index=2};
    if(cont_animacao>18){image_index=1};

	if(cont_animacao==12){instance_create(x+(16*dir),y-16,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=4*dir;
	target.vely=-6;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = -16;
	target.soladotempo = 24;
	}
	
	
	cont_animacao++;

	if(cont_animacao==25){cont_animacao = 0; estado=parado;combo=3;alarm[4]=15;}

    if(cont_animacao>18)and(BOTAO_ATAQUE){estado=leve4;cont_animacao = 0;}

}