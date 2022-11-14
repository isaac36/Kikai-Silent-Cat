// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações



function template_forte_cima(){
	
	sprite_index = img_ataque_forte_cima;

    if(cont_animacao==0)image_index = 0;
	
	if(cont_animacao>6){image_index=1}
    if(cont_animacao>12)and(18>cont_animacao){image_index=2;velocidadeY=-8;velocidadeXadd=1*dir;}
    if(cont_animacao>18){image_index=3;velocidadeY=velocidadeY;velocidadeXadd=0.5*dir;}





	if(cont_animacao==12){instance_create(x+(16*dir),y-16,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y-24,hitbox); target.player = player;
	target.velx=12*dir+((chargeforce*1)*dir);
	target.velxReal=8*dir+((chargeforce*1)*dir)/2;
	target.vely=-10-((chargeforce*1))/2;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = -16;
	target.soladotempo = 28;
	target.tempo= 16;
	target.estado = solado2;
	target.efeito = target.efeitoforte;
	}
	
ale++;
if(ale==14){ale=0;}

	
	if(cont_animacao==1)and(keyboard_check_direct(BOTAO_ATAQUE2_SETUP)){cont_animacao=0;image_index=0;if (ale==0) {target=instance_create(x+(dir*0),y-15,obj_charge_fx);target.velangulo=360/random(irandom_range(1,4))/4;if(chargeforce<10)chargeforce++;}};
    if(keyboard_check_direct(BOTAO_ATAQUE2_SETUP))and(cont_animacao<=1){image_angle = random_range(-2,2);}else{image_angle=0;}







   cont_animacao++;
   if(cont_animacao==44){cont_animacao = 0; estado=parado;}
}