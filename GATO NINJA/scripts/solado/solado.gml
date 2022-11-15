function solado() {
	
	if(cont_animacao==0){image_index=0;}
	
	
	

		
	sprite_index = img_solado;
	
	
	proporcao = sprite_get_number(sprite_index)/soladotempo;
	
	image_index = floor((proporcao*cont_animacao));
	



	
	if(modo=="patrulha")and(vida>0){modo="luta"};
	
/*
	image_angle= random_range(-2,2);
*/	
	
	if(cont_animacao==0){
	
	if(velxReal!=false){velocidadeX=velxReal}else
	velocidadeXadd = soladovelx;
	
	velocidadeY = soladovely;
	
	}else{image_blend = c_white};


	if(veldir==1){lado="esquerda";}else{lado="direita";}



	if cont_animacao>=soladotempo {

	cont_animacao=0;

	if(chao){estado=parado}else{estado=caindo}


	}else{cont_animacao++;}
	
	


velxReal=false;
}
