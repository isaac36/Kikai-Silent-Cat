// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_ar_leve_cima(){
	

	
	
    sprite_index = img_ataque_leve_cima_ar;
	
	
	velocidadeX = 0; dirV=dir;

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);image_index = 0;}
    
    if(cont_animacao>4){image_index = 1;}
	
	if(cont_animacao>=8){image_index = 2;}

	
	if(cont_animacao==8){instance_create(x,y-24,hitbox);hitbox.lado = lado; target = instance_nearest(x,y-24,hitbox); target.player = player;
	target.velx=2*dir;
	target.vely=-10;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 0;
	target.posY = -24;
	target.soladotempo = 20;
	
	}
	
	
    if(cont_animacao==0){target=hitbox};
	
	if (instance_exists(target)){if(target.bateu==1)and(cont_animacao>=8){velocidadeX=2;velocidadeY=-2;dirV=dir}}
	

	
	
	cont_animacao++;
	
	

	if(cont_animacao==16){cont_animacao = 0;if(place_meeting(x,y+velocidadeY,obj_wall)){estado=parado;}else{estado=caindo}}



}