function pulando() {
	
	velocidadeY=0;
	
	sprite_index=img_impulso;
	
	cont_animacao++;
	
	
	
	
	if(image_index>=1.8){pulo--;velocidadeY = -altura_pulo;sprite_index = img_pulando;instance_create(x,y,obj_poeira_pulo);estado=pulando2;if(distance_to_object(obj_gato)<400)or(img_parado==spr_gato_parado) audio_play_sound(pulosound,0,0) };                    
}