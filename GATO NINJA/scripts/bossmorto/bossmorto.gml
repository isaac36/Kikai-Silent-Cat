// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function bossmorto(){
	
	if(cont_animacao==0){instance_create(x,y-(sprite_height/2),obj_sangue_doidera);
		ultimoalvo=obj_gato;
		tela = instance_create(x,y,obj_tela_vermela);
		tela.dono=id;
		tela.vel = 0.002;
		}
	
	if(!dropou){instance_create(x,y,obj_chavefinal);dropou=true;}
	
	global.chefaoMorto1 = true;
	
	if(veldir==1){lado="esquerda";}else{lado="direita";}
	modo="morto";
	sprite_index = img_morto;
	mask_index = sem_mascara;
	image_blend = c_white;
	image_angle = 0;
	velocidademorte = 0.4;
	corMorte = 50;
	
	image_blend = make_color_rgb(morteR,morteG,morteB);
	
	morteR = morteR - velocidademorte;
	morteG = morteG - velocidademorte;
	morteB = morteB - velocidademorte;
	
	if(morteR<corMorte){morteR=corMorte}
	if(morteG<corMorte){morteG=corMorte}
	if(morteB<corMorte){morteB=corMorte}

	proporcao = sprite_get_number(sprite_index)/200;
	
	image_index = floor((proporcao*cont_animacao));
	
	

if(cont_animacao>200){cont_animacao=200};
if(cont_animacao==200){image_index=sprite_get_number(sprite_index)-1;};

if(cont_animacao<70){

if(!audio_is_playing(sfx_sangue))audio_play_sound(sfx_sangue,0,0)};


cont_animacao++;
}