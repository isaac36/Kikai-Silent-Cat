// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function inimigo1_morto(){
	
	if(veldir==1){lado="esquerda";}else{lado="direita";}
	modo="morto";
	sprite_index = img_morto;
	mask_index = sem_mascara;
	image_blend = c_white;
	image_angle = 0;
	velocidademorte = 3;
	corMorte = 50;
	
	image_blend = make_color_rgb(morteR,morteG,morteB);
	
	morteR = morteR - velocidademorte;
	morteG = morteG - velocidademorte;
	morteB = morteB - velocidademorte;
	
	if(morteR<corMorte){morteR=corMorte}
	if(morteG<corMorte){morteG=corMorte}
	if(morteB<corMorte){morteB=corMorte}

}