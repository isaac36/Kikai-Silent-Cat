// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function curupira_leve4(){

	sprite_index = spr_template_forteEx;


	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	/*if(!chao){
	if(BOTAO_ESQUERDA){dirV=-1;lado="esquerda"}
	if(BOTAO_DIREITA){dirV=1;lado="direita"}
	}*/
    
	if(cont_animacao<12){image_index=0};
    if(cont_animacao>12){image_index=1;velocidadeXadd=4*dir};
    if(cont_animacao>25){image_index=2;velocidadeXadd=2*dir};





	if(cont_animacao==12){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=14*dir;
	target.vely=-7;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 24;
	
	
	instance_create(x+2,y,obj_fogoEx);
	instance_create(x-2,y,obj_fogoEx);
	target = instance_nearest(x-2,y,obj_fogoEx);
	target.image_xscale = -1;
	}
	
	
	cont_animacao++;

	if(cont_animacao==35){cont_animacao = 0; estado=parado;combo=4;alarm[4]=15;}


}