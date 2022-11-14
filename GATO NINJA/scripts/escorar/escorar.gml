function escorar() {
		
		
		
		
		
		
		
		
		
	if(instance_exists(obj_plataforma)){
	plataforma = instance_nearest(x+velocidadeX,y+velocidadeY,obj_plataforma);
	}

	
if(cont_animacao==0){sprite_index=spr_gato_escorando;image_index=0;preparando=true;velocidadeY=0;tendencia=0;}
	

	pulo = 1;
	pode_dash_ar = true;
	pode_forte_ar=true;

	if(!place_meeting(x+dir,y,obj_wall)){estado=caindo;sprite_index=img_caindo;}

	if(BOTAO_CIMA)and(preparando==false){velocidadeY=velocidadeY-1;}
	if(BOTAO_BAIXO)and(preparando==false){velocidadeY=velocidadeY+1;}
	
	if(velocidadeY>6){velocidadeY=6;}
	if(velocidadeY<-3){velocidadeY=-3;}
	
	if(place_meeting(x,y+velocidadeY,obj_plataforma))and(!descer)and(velocidadeY>0)and(plataforma!=-1)and(plataforma.y>=y)
	{while(!place_meeting(x,y+1,obj_plataforma)){y++;}
	estado=parado;sprite_index=img_parado;
	velocidadeY=0;
	}
	
	if(cont_animacao>18)tendencia = 1;
	
	if(BOTAO_DIREITA)and(lado="esquerda"){tendencia=0;}
	if(BOTAO_ESQUERDA)and(lado="direita"){tendencia=0;}
		

	if(place_meeting(x,y+1,obj_wall))or((place_meeting(x,y+1,obj_plataforma)and(plataforma.y>=y)and(velocidadeY>0))){cont_animacao = 0; estado=parado;sprite_index=img_parado;}
	if(place_meeting(x,y+1,obj_wall)){cont_animacao = 0; estado=parado;sprite_index=img_parado;}
	
	
	
	
	

	
	
	target=-1;

	
	
   
   
   
   if(cont_animacao>20){
	   
	   preparando=false;
	   
	   if(velocidadeY<0){sprite_index=spr_gato_escalando;}
	   
	   if(velocidadeY==0){sprite_index=spr_gato_escalando_parado;}
	   if(velocidadeY>0)and(velocidadeY<3){sprite_index=spr_gato_escorando;image_index=5;}
	   if(velocidadeY>=3){sprite_index=spr_gato_escorando_caindo2;}
	   
	   
	   
	   if(estado==pulando){sprite_index=spr_gato_escorando_pulando;}
	   }
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	   
	if(lado=="esquerda")and(BOTAO_PULO)and(!BOTAO_BAIXO){pulo--;velocidadeY = -altura_pulo;velocidadeX=10;estado=pulando2;cont_animacao=0;target=instance_create(x+(-15),y-(sprite_height/2),obj_poeira_pulo_ar);target.image_angle=90*dir;}else 
	if(lado=="direita")and(BOTAO_PULO)and(!BOTAO_BAIXO){pulo--;velocidadeY = -altura_pulo;velocidadeX=-10;estado=pulando2;cont_animacao=0;target=instance_create(x+(+15),y-(sprite_height/2),obj_poeira_pulo_ar);target.image_angle=90*dir;}
	
	
	if(BOTAO_PULO)and(BOTAO_BAIXO){estado=caindo;cont_animacao=0;sprite_index=img_caindo;} 
	
	   
	   
	   
	   
	   
	   
	   
cont_animacao++;


}















