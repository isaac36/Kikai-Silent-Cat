// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_especial_baixo(){

	sprite_index = spr_template_especial_baixo;

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	if(cont_animacao<=32){
		image_index = 0;
		}
	if(cont_animacao>32)image_index = 1;
	if(cont_animacao>34)image_index = 2;
	if(cont_animacao>36)image_index = 3;
	if(cont_animacao>38)image_index = 5;




	if(cont_animacao==34){
	
	target = instance_create(x+(10*dir),y,obj_template_terremoto);
	
	
	//hitbox
	target.velx=14*dir;
	target.velxReal=15*dir;
	target.vely=-5;
	target.veldir=dir;
	target.dono = id;
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 28;
	target.tempo = 16;
	
	//projetil
	target.veldir = dir;
	target.velocidade = 10;
	target.player = player;

	}






	cont_animacao++;

	if(cont_animacao==60){if(chao){cont_animacao = 0; estado=parado;}else{cont_animacao = 0; estado=caindo;}}


}