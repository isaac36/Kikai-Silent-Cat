function parado() {
	
	sprite_index = img_parado;
	
	pode_dash_ar =true;
	
	image_angle=0;

	if(chao){pulo=1;pode_dash_ar = true;};
	pode_forte_ar=true;

	if((BOTAO_ESQUERDA)or(BOTAO_DIREITA)){estado=andando};
	
	
	
	if(velocidadeY>0){estado=caindo}

	//if(pulo>0){
    
	if(BOTAO_PULO)and(!BOTAO_BAIXO)and(chao){estado=pulando;cont_animacao=0;sprite_index = img_impulso;}
	if(BOTAO_BAIXO)and(img_parado==spr_gato_parado){estado=agachar;cont_animacao=0;}

	//};

	if(BOTAO_DASH and pode_dash){contdash=0;estado=dash;pode_dash = false;alarm[0]=dash_CD;cont_animacao=0;sprite_index=img_dash;image_index=0;}

//leves
	if(BOTAO_ATAQUE)and(combo==0)and(chao){cont_animacao = 0;estado=leve}
	if(BOTAO_ATAQUE)and(combo==1)and(chao){cont_animacao = 0;estado=leve2}
	if(BOTAO_ATAQUE)and(combo==2)and(chao){cont_animacao = 0;estado=leve3}
	if(BOTAO_ATAQUE)and(combo==3)and(chao){cont_animacao = 0;estado=leve4}
	
	if(!place_meeting(x,y,obj_oportunidade))and(place_meeting(x,y,obj_esconder))and(BOTAO_ATAQUE2)and(img_parado==spr_gato_parado){estado=gato_escondido;cont_animacao=0;}


/*
	if(BOTAO_ATAQUE)and(BOTAO_BAIXO)and(!BOTAO_CIMA)and(chao){cont_animacao = 0;estado=leve_baixo}
	if(BOTAO_ATAQUE)and(BOTAO_CIMA)and(!BOTAO_BAIXO)and(chao){cont_animacao = 0;estado=leve_cima}
*/

//fortes
/*
	if(BOTAO_ATAQUE2)and(!BOTAO_BAIXO)and(!BOTAO_CIMA)and(chao){cont_animacao=0;estado=forte}
	if(BOTAO_ATAQUE2)and(BOTAO_BAIXO)and(!BOTAO_CIMA)and(chao){cont_animacao=0;estado=forte_baixo}
	if(BOTAO_ATAQUE2)and(!BOTAO_BAIXO)and(BOTAO_CIMA)and(chao){cont_animacao=0;estado=forte_cima}

	if(BOTAO_ESPECIAL)and(CD_especial==true)and(!BOTAO_BAIXO)and(BOTAO_CIMA){cont_animacao=0;estado=especial_cima;alarm[9]=30;CD_especial=false;}
	if(BOTAO_ESPECIAL)and(CD_especial==true)and(!BOTAO_BAIXO)and(!BOTAO_CIMA){cont_animacao=0;estado=especial;alarm[9]=30;CD_especial=false;}
	if(BOTAO_ESPECIAL)and(CD_especial==true)and(BOTAO_BAIXO)and(!BOTAO_CIMA){cont_animacao=0;estado=especial_baixo;alarm[9]=30;CD_especial=false;}
	*/
	}
