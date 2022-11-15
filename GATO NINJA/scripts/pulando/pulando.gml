function pulando() {
	
	velocidadeY=0;
	
	sprite_index=img_impulso;
	
	cont_animacao++;
	
	
	
	
	if(image_index>=1.8){pulo--;velocidadeY = -altura_pulo;sprite_index = img_pulando;instance_create(x,y,obj_poeira_pulo);estado=pulando2};
}