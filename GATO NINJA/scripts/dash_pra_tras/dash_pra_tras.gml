function dash_pra_tras() {
	
	if(cont_animacao==0)
	{
	image_index=0;
	if(lado="direita"){velocidadeX=-10;}else{velocidade=10;};
	}
	
	sprite_index = img_caindo;
	
	proporcao = sprite_get_number(sprite_index)/15;
	
	image_index = floor((proporcao*cont_animacao));
	

	
	
	
	
	
	
	
	if(cont_animacao<=15){estado=caindo;cont_animacao=0;}
}
