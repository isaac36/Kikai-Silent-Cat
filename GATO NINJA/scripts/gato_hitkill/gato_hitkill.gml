// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gato_hitkill(){
	
	sprite_index = spr_gato_ataque1;

	if(cont_animacao==0)velocidadeX=velocidadeX+(dir*8);
	if(velocidadeX>8){velocidadeX=8}
	if(velocidadeX<-8){velocidadeX=-8}



	if(cont_animacao==0){target=instance_create(x+(32*dir),y,hitbox_gato);
	target.velxReal=(4*dir);
	target.vely=0;
	target.veldir=dir;
	target.dono = instance_nearest(x,y,obj_gato);
	target.posX = 32*dir;
	target.posY = 0;
	target.soladotempo = 20;
	target.image_xscale = target.image_xscale*2;
	target.image_yscale = target.image_yscale*2;
	target.efeito = target.efeitoCorte;
	target.telavermelha = true;
	target.sangue = true;
	target.efeitoSangue = obj_sangue2_fx;
	audio_play_sound(sfx_hitAr,0,0);
	target.somHit = sfx_inimigo_hitado2;
	
	//Hitkill
	if(instance_exists(obj_inimigo)){
	target.vida = instance_nearest(x,y,obj_inimigo).vidamax;
	}
	
	}

if(cont_animacao==0){image_index=0;}
cont_animacao++;

if(cont_animacao>20){image_index=6;};
if(cont_animacao<=20){if(lado=="direita")velocidadeXadd=5 else{velocidadeXadd=-5;}};
if(cont_animacao>=40){estado=parado;combo=0;cont_animacao=0;alarm[4]=15;}
}