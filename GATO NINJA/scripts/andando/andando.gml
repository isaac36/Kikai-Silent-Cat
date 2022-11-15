function andando() {
	
	CD_baixo_ataque_forte = false;
	pode_dash_ar =true;
	
	image_angle = 0;
	
	 contpoeiraas++;
	
	sprite_index = img_andando;
	
	if(instance_exists(obj_plataforma)){
	plataforma = instance_nearest(x,y,obj_plataforma);
	}else{plataforma=-1}


	if(BOTAO_ESQUERDA){
		
	 velocidadeXadd-=1.2;
	 lado="esquerda";
		
		};
		
	if(BOTAO_DIREITA){
		
	velocidadeXadd+=1.2;
	lado="direita";
		
		};
		
	
	
	
	
	
	
	
	if(velocidadeY>0){estado=caindo;cont_animacao=0;}
	if(velocidadeY<0){estado=pulando;cont_animacao=0;}

	//if(pulo>0){



	if(BOTAO_PULO)and(!BOTAO_BAIXO)and(chao){estado=pulando;cont_animacao=0;sprite_index = img_impulso;}
	if(BOTAO_PULO)and(BOTAO_BAIXO)and(descer==false)and(chao){alarm[2]=2 ;descer=true;} 
	if(BOTAO_BAIXO)and(img_parado==spr_gato_parado){estado=agachar;cont_animacao=0;}

	//};

	if(BOTAO_DASH and pode_dash){contdash=0;estado=dash;pode_dash = false;alarm[0]=dash_CD;cont_animacao=0;sprite_index=img_dash;image_index=0;}

//leves
	if(BOTAO_ATAQUE)and(combo==0)and(chao){cont_animacao = 0;estado=leve}
	if(BOTAO_ATAQUE)and(combo==1)and(chao){cont_animacao = 0;estado=leve2}
	if(BOTAO_ATAQUE)and(combo==2)and(chao){cont_animacao = 0;estado=leve3}
	if(BOTAO_ATAQUE)and(combo==3)and(chao){cont_animacao = 0;estado=leve4}

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
	
	if!((BOTAO_ESQUERDA) or (BOTAO_DIREITA)){estado=parado;}

}
