// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gato_ataque3(){
	
	sprite_index = spr_gato_ataque3;
	
	if(cont_animacao==0)velocidadeX=10*dir;


	if(cont_animacao==25){target=instance_create(x+(32*dir),y,hitbox_gato);
	target.estado=solado3;
	target.velxReal=(9*dir);
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

if(place_meeting(x+velocidadeX,y,obj_inimigo)){velocidadeX=0};
if(cont_animacao==0){image_index=0;velocidadeY=-5;}
if(cont_animacao==15){velocidadeY=5;};
cont_animacao++;


if(cont_animacao>=55){estado=parado;combo=0;cont_animacao=0;}


if(cont_animacao>40){
	if((BOTAO_ESQUERDA)or(BOTAO_DIREITA)){estado=andando};
    
	if(BOTAO_PULO)and(!BOTAO_BAIXO)and(chao){estado=pulando;cont_animacao=0;sprite_index = img_impulso;}
	if(BOTAO_BAIXO)and(img_parado==spr_gato_parado){estado=agachar;cont_animacao=0;
		
	if(BOTAO_ATAQUE)and(combo==0)and(chao){cont_animacao = 0;estado=leve}
	if(BOTAO_ATAQUE)and(combo==1)and(chao){cont_animacao = 0;estado=leve2}
	if(BOTAO_ATAQUE)and(combo==2)and(chao){cont_animacao = 0;estado=leve3}
	if(BOTAO_ATAQUE)and(combo==3)and(chao){cont_animacao = 0;estado=leve4}

}

}
}