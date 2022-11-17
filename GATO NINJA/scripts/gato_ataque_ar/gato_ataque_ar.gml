// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gato_ataque_ar(){
	
	sprite_index = spr_gato_ataque_ar;
	
	proporcao = sprite_get_number(sprite_index)/25;
	
	image_index = floor((proporcao*cont_animacao));
	
	if(cont_animacao==0)velocidadeX=10*dir;


	if(cont_animacao==12){target=instance_create(x+(32*dir),y,hitbox_gato);
	target.estado=solado;
	target.velxReal=(4*dir);
	target.vely=-5;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_personagem_generico);
	target.posX = 32*dir;
	target.posY = 0;
	target.soladotempo = 20;
	target.vida = 20;
	target.image_xscale = target.image_xscale*2;
	target.image_yscale = target.image_yscale*2;
	
	target.velocidadeRotacao = -4*dir;
	target.efeito = target.efeitoCorte;
	target.efeitoAngulo = 45;
	target.efeito = target.efeitoCorte;
	target.sangue = true;
	audio_play_sound(sfx_hitAr,0,0);
	
	}


if(cont_animacao==12){velocidadeY=5;velocidadeX=dir*3};
cont_animacao++;

if(place_meeting(x+velocidadeX,y+velocidadeY,obj_inimigo)){velocidadeX=0;};

if(cont_animacao>=25){estado=caindo;combo=0;cont_animacao=0;}

}