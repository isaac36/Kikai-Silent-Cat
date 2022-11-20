function soladoAgachado() {
	
	mask_index = spr_gato_colisao_mask_agachado;
	
	if(cont_animacao==0){image_index=0;}
	
	sprite_index = img_solado_agachado;
	
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

     estado=agachar;
	 sprite_index=spr_gato_agachado;

	}else{cont_animacao++;}
	
velxReal=false;
}
