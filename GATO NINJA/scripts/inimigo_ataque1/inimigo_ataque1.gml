
function inimigo_ataque1(){
	
	if(cont_animacao==0){image_index=0;}
	
	sprite_index = img_ataque_leve;
	
	proporcao = sprite_get_number(sprite_index)/40;
	
	image_index = floor((proporcao*cont_animacao));


    
	
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
	target.image_yscale = 2;
	target.vida = 10;
	}



cont_animacao++;
if(cont_animacao>=40){estado=parado;cont_animacao=0;}
}
