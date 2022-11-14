// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function pulando2(){
	
	if(cont_animacao==15){sprite_index=img_pulando;}
	if!(sprite_index == spr_gato_escorando_pulando){sprite_index=img_pulando};
	

	
	if(place_meeting(x,y+1,obj_wall)){estado=parado;}

	if(cont_animacao==0){audio_play_sound(pulosound,0,0);cont_animacao++}

	if(velocidadeY>13)sprite_index = img_impulso;




	if(BOTAO_ESQUERDA){
		
	velocidadeXadd-=1.2;
	lado="esquerda";
	}
	
	if(BOTAO_DIREITA){
		
	 velocidadeXadd+=1.2;
	 lado="direita";
	};


	if(velocidadeY>=0){estado=caindo;}
	
	
	
	
	


/*
	//leve
	
	
	if(BOTAO_ATAQUE)and(!BOTAO_BAIXO)and(!BOTAO_CIMA)and(CD_lado_ataque==false){cont_animacao=0;estado=leve_ar;CD_lado_ataque=true;alarm[6]=25;}
	if(BOTAO_ATAQUE)and(BOTAO_BAIXO)and(!BOTAO_CIMA)and(CD_baixo_ataque==false){cont_animacao=0;estado=leve_baixo_ar;CD_baixo_ataque=true;alarm[5]=25;}
	if(BOTAO_ATAQUE)and(BOTAO_CIMA)and(!BOTAO_BAIXO)and(CD_cima_ataque==false){cont_animacao=0;estado=leve_cima_ar;CD_cima_ataque=true;alarm[7]=25;}
	//forte
	
	if(BOTAO_ATAQUE2)and(!BOTAO_BAIXO)and(pode_forte_ar){descer=false;cont_animacao=0;estado=forte_ar;pode_forte_ar=false;}
	if(BOTAO_ATAQUE2)and(BOTAO_BAIXO)and(CD_baixo_ataque_forte==false){descer=false;cont_animacao=0;estado=forte_baixo_ar;CD_baixo_ataque_forte=true;alarm[8]=30;}

*/
	
	cont_animacao++;
	
	if(BOTAO_DASH and pode_dash and pode_dash_ar){contdash=0;estado=dash;pode_dash = false;pode_dash_ar = false;alarm[0]=dash_CD;cont_animacao=0;sprite_index=spr_gato_dash;image_index=0;}

		//pendurar
	if(img_parado==spr_gato_parado)and(lado="direita")and(velocidadeX>0)and(place_meeting(x+1,y,obj_wall_escalavel))and(!place_meeting(x,y+5,obj_wall)){

	estado = escorar;cont_animacao=0;

	}
	
	if(img_parado==spr_gato_parado)and(lado="esquerda")and(velocidadeX<0)and(place_meeting(x-1,y,obj_wall_escalavel))and(!place_meeting(x,y+5,obj_wall)){

	estado = escorar;cont_animacao=0;

	}

}