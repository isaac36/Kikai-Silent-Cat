// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_ar_forte(){
	
	sprite_index = img_ataque_forte_ar;
	

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}
	
	velocidadeXadd=0;
	if(BOTAO_ESQUERDA){velocidadeXadd=-1;}
	if(BOTAO_DIREITA){velocidadeXadd=1;}
	
	
	if(cont_animacao<=4){image_index=0;velocidadeY=0;}
	if(cont_animacao>4)and(cont_animacao<12){image_index=1;velocidadeY=-8;}
    if(cont_animacao>=12){image_index=2;velocidadeY=velocidadeY;}

	





	if(cont_animacao==4){instance_create(x,y-16,hitbox);hitbox.lado = lado; target = instance_nearest(x,y-16,hitbox); target.player = player;
	target.velx=10*dir;
	target.vely=-10;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 0;
	target.posY = -16;
	target.soladotempo = 18;
	target.tempo= 16;
	
	}
	
	
	cont_animacao++;

	if(cont_animacao==30){velocidadeY = velocidadeY+4; cont_animacao = 0;estado=caindo;}

}