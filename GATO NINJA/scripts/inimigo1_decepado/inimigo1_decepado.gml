
function inimigo1_decepado(){

	
	if(veldir==1){lado="esquerda";}else{lado="direita";}
	modo="morto";
	sprite_index = img_decepado;
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
	
	cont_animacao=cont_animacao+0.7;

if(cont_animacao>200){cont_animacao=200};
if(cont_animacao==200){image_index=sprite_get_number(sprite_index)-1;};




cont_animacao++;
}

