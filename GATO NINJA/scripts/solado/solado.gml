function solado() {
	
	if(cont_animacao==0){image_index=0;}

	if(vida>0){
	sprite_index = img_solado;
	}
	
	if(modo=="patrulha")and(vida>0){if(alarm[11]==-1)alarm[11]=2;};
	
	image_angle= random_range(-2,2);
	
	
	if(cont_animacao==0){
	
	image_blend = c_red;
	
	if(velxReal!=false){velocidadeX=velxReal}else
	velocidadeXadd = soladovelx;
	
	velocidadeY = soladovely;
	
	}else{image_blend = c_white};


	if(veldir==1){lado="esquerda";}else{lado="direita";}



	if cont_animacao>soladotempo {

	cont_animacao=0;

	if(chao){estado=parado}else{estado=caindo}


	}else{cont_animacao++;}
	
	


velxReal=false;
}
