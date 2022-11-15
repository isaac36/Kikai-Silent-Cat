// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gato_ataque2(){
	
	sprite_index = spr_gato_ataque2;
	

    
	
	if(cont_animacao==0)velocidadeX=velocidadeX+(dir*6);
	if(velocidadeX>8){velocidadeX=8}
	if(velocidadeX<-8){velocidadeX=-8}



	if(cont_animacao==8){target=instance_create(x+(32*dir),y,hitbox_gato);
	target.velxReal=(6*dir);
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 32*dir;
	target.posY = 0;
	target.soladotempo = 40
	target.vida = 20;
	target.image_xscale = target.image_xscale*2;
	target.image_yscale = target.image_yscale*2;
	target.efeito = target.efeitoCorte;
	target.sangue = true;
	audio_play_sound(sfx_hitAr,0,0);
	
	}

if(place_meeting(x+velocidadeX,y,obj_inimigo)){velocidadeX=0};
if(cont_animacao==0){image_index=0;}
cont_animacao++;


if(cont_animacao>=20){estado=parado;cont_animacao=0;combo=2;cont_animacao=0;alarm[4]=15;
	
	if(BOTAO_ATAQUE)and(combo==0)and(chao){cont_animacao = 0;estado=leve}
	if(BOTAO_ATAQUE)and(combo==1)and(chao){cont_animacao = 0;estado=leve2}
	if(BOTAO_ATAQUE)and(combo==2)and(chao){cont_animacao = 0;estado=leve3}
	if(BOTAO_ATAQUE)and(combo==3)and(chao){cont_animacao = 0;estado=leve4}


}
}