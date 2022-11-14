// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function template_especial(){
	
	sprite_index = spr_template_especial;

	if(cont_animacao==0){audio_play_sound(SFX_soco_no_ar,0,0);}

	if(cont_animacao<=22){
		image_index = 0;
		target=instance_create(x-(14*dir),y-20,obj_template_bola_explosao);
		target.velangulo=50;
		target.image_xscale=0.2;
		target.image_yscale=0.2;
		}
	if(cont_animacao>22)image_index = 1;
	if(cont_animacao>24)image_index = 2;
	if(cont_animacao>26)image_index = 3;
	if(cont_animacao>28)image_index = 4;




	if(cont_animacao==24){
	
	target = instance_create(x+(10*dir),y-16,obj_template_bola);
	
	
	//hitbox
	target.velx=14*dir;
	target.velxReal=25*dir;
	target.vely=-20;
	target.veldir=dir;
	target.dono = id;
	target.posX = 16*dir;
	target.posY = 0;
	target.soladotempo = 28;
	target.tempo = 16;
	target.velocidadeRotacao = -25*dir;
	target.estado = solado3;
	
	//projetil
	target.veldir = dir;
	target.velocidade = 10;
	target.player = player;

	}






	cont_animacao++;

	if(cont_animacao==42){if(chao){cont_animacao = 0; estado=parado;}else{cont_animacao = 0; estado=caindo;}}

}