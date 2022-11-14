function caindo() {	
	

	sprite_index = img_caindo;
		
		
	cont_animacao++;




	if(BOTAO_ESQUERDA){
		
	velocidadeXadd-=aceleracaoX;
	lado="esquerda";
	}
	
	if(BOTAO_DIREITA){
		
	 velocidadeXadd+=aceleracaoX;
	 lado="direita";
	};



	//leve
	
	
	if(BOTAO_ATAQUE){cont_animacao=0;estado=leve_ar;CD_lado_ataque=true;alarm[6]=25}
		/*
	if(BOTAO_ATAQUE)and(BOTAO_BAIXO)and(!BOTAO_CIMA)and(CD_baixo_ataque==false){cont_animacao=0;estado=leve_baixo_ar;CD_baixo_ataque=true;alarm[5]=25;}
	if(BOTAO_ATAQUE)and(BOTAO_CIMA)and(!BOTAO_BAIXO)and(CD_cima_ataque==false){cont_animacao=0;estado=leve_cima_ar;CD_cima_ataque=true;alarm[7]=25;}
	//forte
	
	if(BOTAO_ATAQUE2)and(!BOTAO_BAIXO)and(pode_forte_ar){descer=false;cont_animacao=0;estado=forte_ar;pode_forte_ar=false;}
	if(BOTAO_ATAQUE2)and(BOTAO_BAIXO)and(CD_baixo_ataque_forte==false){descer=false;cont_animacao=0;estado=forte_baixo_ar;CD_baixo_ataque_forte=true;alarm[8]=30;}

*/

	
	//pendurar
	if(img_parado==spr_gato_parado)and(lado="direita")and(velocidadeX>0)and(place_meeting(x+1,y,obj_wall_escalavel))and(!place_meeting(x,y+5,obj_wall)){

	estado = escorar;cont_animacao=0;

	}
	
	if(img_parado==spr_gato_parado)and(lado="esquerda")and(velocidadeX<0)and(place_meeting(x-1,y,obj_wall_escalavel))and(!place_meeting(x,y+5,obj_wall)){

	estado = escorar;cont_animacao=0;

	}
	
if(BOTAO_DASH and pode_dash and pode_dash_ar){contdash=0;estado=dash;pode_dash = false;pode_dash_ar = false;alarm[0]=dash_CD;cont_animacao=0;sprite_index=spr_gato_dash;image_index=0;}

	
	if(chao){estado=parado;cont_animacao=0;};
	}
