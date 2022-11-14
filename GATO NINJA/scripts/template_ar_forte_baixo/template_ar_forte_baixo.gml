// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_ar_forte_baixo(){
	
	if(cont_animacao==0){target=hitbox};
	
	if(velocidadeX>0){x=round(x);velocidadeX--;}
	if(velocidadeX<0){x=round(x);velocidadeX++;}
	
	
	
	
	
	
	


	sprite_index = img_ataque_forte_baixo_ar;
	

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}
	
	
	//velocidadeX=0;
	
	
    image_index = 0;
	if(cont_animacao=11){image_index=1;velocidadeY=8;}
    if(cont_animacao>18){image_index=2}

	





	if(cont_animacao==12){instance_create(x,y+8,hitbox);hitbox.lado = lado; target = instance_nearest(x,y+8,hitbox); target.player = player;
	target.velx=0*dir;
	target.vely=10;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 0;
	target.posY = 8;
	target.soladotempo = 18;
	target.tempo = 9999;
	target.descer = true;
	
	}
	
	
	cont_animacao++;
	
	
	
	
		

	
	if (instance_exists(target)){if(target.bateu==1){cont_animacao=25; velocidadeX=0;velocidadeY=-6;dirV=dir}}
	

	
	
	
	
	
	
    
	if(keyboard_check_direct(BOTAO_ATAQUE2_SETUP)){descer = true;alarm[8]=60;}else{descer = false};
	
	
	

	if(cont_animacao==24)and(keyboard_check_direct(BOTAO_ATAQUE2_SETUP))and(!place_meeting(x,y+1,obj_wall)){cont_animacao=23};
	if(cont_animacao==25){cont_animacao = 0;
		
		instance_destroy(hitbox);
		descer = false;
		estado=caindo;;
		
}
	












}