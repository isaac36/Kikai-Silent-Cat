
function template_ultimate2(){
	

	sprite_index =  spr_template_ultimate2;
	image_angle = image_angle + (18)*dir;
	image_index = round(image_angle*3/360);

if(cont_animacao<182){
	velocidadeY=-2;
	velocidadeX=2*dir;
}

if(cont_animacao<18){velocidadeX=0;}
	
	
    cont_animacao++;
	
	
	
	
	
	
	
	
	
	
	
	
	if(cont_animacao%18==0)and(cont_animacao<182){instance_create(x+(16*dir),y+16,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=0;
	target.velxReal=4.4*dir;
	target.vely=-6.8;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 0;
	target.posY = 16;
	target.soladotempo = 28;
	target.tempo= 16;
	target.estado = solado3;
	target.velocidadeRotacao = 20;
	target.image_xscale = target.image_xscale*2;
	target.image_yscale = target.image_yscale*2;
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	if(cont_animacao>182){image_index=1;image_angle=0;velocidadeX=1*dir;velocidadeY=-3;}
	if(cont_animacao>188){image_index=2;image_angle=0;}
		if(cont_animacao==198){instance_create(x+(6*dir),y+16,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=0;
	target.velxReal=30*dir;
	target.vely=-15;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 6*dir;
	target.posY = 16;
	target.soladotempo = 28;
	target.tempo= 16;
	target.estado = solado3;
	target.velocidadeRotacao = 50;
	target.image_xscale = target.image_xscale*2;
	target.image_yscale = target.image_yscale*2;
	target.efeito = target.efeitoforte;
	}
	if(cont_animacao>194){image_index=3;image_angle=0;}

if(cont_animacao==210){estado=caindo;cont_animacao=0;image_angle=0;}



















if(place_meeting(x+velocidadeX,y,obj_personagem_generico)){
target = instance_nearest(x+velocidadeX,y,obj_personagem_generico);
velocidadeX = target.velocidadeX;
velocidadeY = target.velocidadeY;
}










}