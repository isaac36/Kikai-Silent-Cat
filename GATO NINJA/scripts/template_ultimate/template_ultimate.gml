// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_ultimate(){
	
	sprite_index=spr_template_ultimate;
	
	if(cont_animacao%10)==0{
	
	target=instance_create(x,y-16,obj_template_bola_explosao);
	target.velangulo=50;
	target.depth=999;
	target.image_xscale=2;
	target.image_yscale=2;
}
	
	
	
	image_index=0;
	
	if(cont_animacao>8){image_index=1}

	if(cont_animacao==16){
		
	image_index=2;
		
		target=instance_create(x, room_height+200,obj_template_ultimate);	
	
	//hitbox
	target.velx=0;
	target.velxReal=false;
	target.vely=-25;
	target.veldir=dir;
	target.dono = id;
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 28;
	target.tempo = 16;
	
	//projetil
	target.veldir = dir;
	target.velocidade = 10;
	target.player = player;
		
		
	 }
	 
	 if(115>cont_animacao)and(cont_animacao>15){image_index=2;image_angle = random_range(-5,5);}else{image_angle=0;}
	
	if(cont_animacao>115){image_index=2}
	if(cont_animacao>150){image_index=3}
	if(cont_animacao>160){image_index=4}
	if(cont_animacao>170){image_index=5}
	if(cont_animacao>180){image_index=4}
	if(cont_animacao>190){image_index=5}

		 
		 
		 
	

cont_animacao++;
if(cont_animacao==230){cont_animacao = 0; estado=parado;}

}