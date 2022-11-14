// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_ar_leve_baixo(){
	
	sprite_index = img_ataque_leve_baixo_ar;

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);image_index = 0;}
	
	if(cont_animacao==0)velocidadeY=0;velocidadeX=0;
		
		
		
		
    
    if(cont_animacao>4){image_index = 1;}
	
	if(cont_animacao>=8){image_index = 2;velocidadeXadd=4*dir;velocidadeY=6;}

	if(cont_animacao==8){instance_create(x+(16*dir),y+8,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=(6.5*dir);
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 8;
	target.soladotempo = 20;
	}
	
	
	cont_animacao++;
	
	

	if(cont_animacao==20){cont_animacao = 0;
	if(place_meeting(x,y+2,obj_wall))or(place_meeting(x,y+2,obj_plataforma)){estado=parado;}else{estado=caindo}
		
		}

   
}