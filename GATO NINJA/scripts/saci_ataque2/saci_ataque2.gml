function saci_ataque2() {
	sprite_index = spr_saci_projetil;

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	pode_ataque2 = false;

	image_index = cont_animacao;

	if(cont_animacao==5){
	instance_create(x,y-16,obj_furacao);
	id_projetil = instance_nearest(x,y,obj_furacao);
	if(lado=="esquerda"){id_projetil.dir=-1}else{id_projetil.dir=1}
	id_projetil.hitbox = hitbox;
	id_projetil.player = player;

	}






	cont_animacao++;

	if(cont_animacao==7){if(chao){cont_animacao = 0; estado=parado;}else{cont_animacao = 0; estado=caindo;}}




}
