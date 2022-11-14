function template_leve_baixo() {
	sprite_index = img_ataque_leve_baixo;


	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	if(!chao){
	if(BOTAO_ESQUERDA){dirV=-1;lado="esquerda"}
	if(BOTAO_DIREITA){dirV=1;lado="direita"}
	}
    

	if(cont_animacao<=5){image_index=0};
    if(cont_animacao>5){image_index=1};
    if(cont_animacao>=14){image_index=2};

	if(cont_animacao==8){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=9*dir;
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 35;
	}
	
	
	cont_animacao++;

	if(cont_animacao==16){cont_animacao = 0; estado=parado;CD_baixo_ataque=true;alarm[5]=10;}



}
