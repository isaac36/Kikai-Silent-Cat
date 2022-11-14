// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_forte_baixo(){

sprite_index = img_ataque_forte_baixo;


    
	if(cont_animacao<4){image_index=0};
    if(cont_animacao>4){image_index=1;velocidadeX=0;dirV=0};
    if(cont_animacao>8){image_index=2;velocidadeX=0;dirV=0};
    if(cont_animacao>12){image_index=3;velocidadeX=0;dirV=0};





	if(cont_animacao==12){instance_create(x+(16*dir),y+16,hitbox);hitbox.lado = lado; target = instance_nearest(x+(24*dir),y,hitbox); target.player = player;
	target.velx=8*dir+((chargeforce*1)*dir);
	target.velxReal=8*dir+((chargeforce*1)*dir);
	target.vely=5+((chargeforce*1));
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 16;
	target.soladotempo = 28;
	target.tempo= 8;
	target.image_xscale = target.image_xscale*1.5;
	target.image_yscale = target.image_yscale*1.5;
	target.descer = true;
	target.estado = solado2;
	target.efeito = target.efeitoforte;
	}
	
	
ale++;
if(ale==14){ale=0;}
	
	if(cont_animacao==1)and(keyboard_check_direct(BOTAO_ATAQUE2_SETUP)){cont_animacao=0;if (ale==0) {target=instance_create(x+(dir*-18),y-30,obj_charge_fx);target.velangulo=360/random(irandom_range(1,4))/4;if(chargeforce<10)chargeforce++;}}; 
    if(keyboard_check_direct(BOTAO_ATAQUE2_SETUP))and(cont_animacao<=1){image_angle = random_range(-2,2);}else{image_angle=0;}






cont_animacao++;
if(cont_animacao==45){cont_animacao = 0; estado=parado;}

}