// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function curupira_leve3(){

	sprite_index = spr_template_fraco1;
	
	if(cont_animacao>8){
	velocidadeX=1*dir;}

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	if(cont_animacao==12){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velxReal=2*dir;
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 24;
	sprite_index = spr_template_fraco1;
	image_index = 1;
	}
	
		if(cont_animacao==18){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velxReal=2*dir;
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 24;
	sprite_index = spr_template_fraco2;
	image_index = 1;
	}
		if(cont_animacao==24){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velxReal=2*dir;
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 24;
	}
		if(cont_animacao==30){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velxReal=2*dir;
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 24;
	sprite_index = spr_template_fraco1;
	image_index = 1;
	}
		if(cont_animacao==36){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velxReal=2*dir;
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 24;
		sprite_index = spr_template_fraco2;
	image_index = 1;
	}
		if(cont_animacao==42){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velxReal=2*dir;
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 24;
		sprite_index = spr_template_fraco1;
	image_index = 1;
	}
	
	
	cont_animacao++;

	if(cont_animacao==55){cont_animacao = 0; estado=parado;combo=3;alarm[4]=15;}

    if(cont_animacao>48)and(BOTAO_ATAQUE){estado=leve4;cont_animacao = 0;}

}