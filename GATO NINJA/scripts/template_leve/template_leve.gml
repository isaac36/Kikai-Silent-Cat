function template_leve() {
	
	sprite_index = img_ataque_leve;
	
	if(cont_animacao>8){
	velocidadeXadd=0.7*dir;
    
	}

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	/*if(!chao){
	if(BOTAO_ESQUERDA){dirV=-1;lado="esquerda"}
	if(BOTAO_DIREITA){dirV=1;lado="direita"}
	}*/
    
	if(cont_animacao<8){
	image_index = 0;
	}else {image_index = 1;}
/*
	if(cont_animacao==8){hitbox=instance_create(x+(16*dir),y,obj_hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=(velocidadeX/2)+(4*dir);
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 20;
	
	}
	*/
	
	cont_animacao++;

	if(cont_animacao==16){cont_animacao = 0; estado=parado;combo=1;alarm[4]=15;}

    if(cont_animacao>14)and(BOTAO_ATAQUE){estado=leve2;cont_animacao = 0;}


}
