
function inimigo_ataque1(){
	
	if(cont_animacao==0){velocidadeX=0;};
	
if(cont_animacao<8)and(4<cont_animacao)image_blend = (c_red);else{image_blend=c_white;}

    
	
	if(cont_animacao==1)velocidadeX=velocidadeX+(dir*5);
	if(velocidadeX>8){velocidadeX=8}
	if(velocidadeX<-8){velocidadeX=-8}



	if(cont_animacao==6){target=instance_create(x+(16*dir),y,hitbox_inimigo);
	target.velxReal=(13*dir);
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 30;
	target.efeito = target.efeitoforte;
	target.somHit = punch;
	audio_play_sound(sfx_hitAr,0,0);
	}



cont_animacao++;
if(cont_animacao>=20){estado=parado;cont_animacao=0;}
}
