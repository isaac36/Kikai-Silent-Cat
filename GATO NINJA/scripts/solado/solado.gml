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
	
	if(chao)and(img_parado==spr_gato_parado){estado=parado;apanhou = true;alarm[11]=10;}else{estado=caindo;apanhou = true;alarm[11]=5;}


	if(chao)and(img_parado!=spr_gato_parado){estado=parado;}else{estado=caindo;}
	
	

	}else{cont_animacao++;}
	
	


velxReal=false;

if(image_index==5)and(img_parado==spr_gato_parado)and(vida<=0){estado=estadomorto;cont_animacao=0;}
}
