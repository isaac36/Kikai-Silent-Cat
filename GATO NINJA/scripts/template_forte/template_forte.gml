// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_forte(){

	sprite_index = img_ataque_forte;


    
	if(cont_animacao<12)and(cont_animacao>0){image_index=0;velocidadeXadd=3*dir;};
    if(cont_animacao>12){image_index=1;velocidadeXadd=2*dir;};
    if(cont_animacao>25){image_index=2;velocidadeXadd=1*dir;};
    if(cont_animacao>35){image_index=2;velocidadeXadd=0*dir;};





	if(cont_animacao==12){instance_create(x+(16*dir),y,hitbox);hitbox.lado = lado; target = instance_nearest(x+(16*dir),y,hitbox); target.player = player;
	target.velx=14*dir;
	target.velxReal=(10*dir)+((chargeforce*1)*dir);
	target.vely=-5-((chargeforce*1))/2;
	target.veldir=dir;
	target.dono = id;
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 28;
	target.tempo = 16;
	target.estado = solado2;
	target.velocidadeRotacao = 0;
	target.efeito = target.efeitoforte;
	}
	
	

	

if(keyboard_check_direct(BOTAO_ATAQUE2_SETUP))and(cont_animacao<=1){image_angle = random_range(-2,2);}else{image_angle=0;}





cont_animacao++;


ale++;
if(ale==14){ale=0;}

if(cont_animacao==1)and(keyboard_check_direct(BOTAO_ATAQUE2_SETUP)){cont_animacao=0;image_index=0;if (ale==0) {target=instance_create(x+(dir*-14),y-25,obj_charge_fx);target.velangulo=360/random(irandom_range(1,4))/4;if(chargeforce<10)chargeforce++;}};
if(cont_animacao==45){cont_animacao = 0; estado=parado;}
}