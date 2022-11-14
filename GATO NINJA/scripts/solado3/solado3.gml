
function solado3(){
	
	if(modo=="patrulha")modo="luta";
	
	sprite_index = img_jogado;
	image_index = 2;
	
	image_angle = image_angle + (velocidadeRotacao);
	
	rotacaoResistencia = 0.3;
	
	if(velocidadeRotacao>10){velocidadeRotacao=velocidadeRotacao-rotacaoResistencia;if(velocidadeRotacao<0){velocidadeRotacao=0}}
	if(velocidadeRotacao<-10){velocidadeRotacao=velocidadeRotacao+rotacaoResistencia;if(velocidadeRotacao>0){velocidadeRotacao=0}}



    angulo = image_angle;
	image_angle = 0;
	if(place_meeting(x+velocidadeX,y,obj_wall)){velocidadeX*=-1/2;};
	
	
	
	
	
	
	
	
	if(!descer)and(place_meeting(x,y+velocidadeY,obj_plataforma)){
	plataforma = instance_place(x,y+velocidadeY,obj_plataforma)} else plataforma = -1;

	if((place_meeting(x,y+velocidadeY,obj_wall))or((place_meeting(x,y+velocidadeY,obj_plataforma))and(!descer)and(velocidadeY>0)and(plataforma!=-1)and(plataforma.y>=y)))and(velocidadeY>0){y = floor(y);velocidadeY=0;instance_create(x,y,obj_poeira_pulo_ar);};
	//if(place_meeting(x+velocidadeX,y,obj_wall)){velocidadeX=-(sign(velocidadeX))*(     (abs(velocidadeX)     )  +  (   abs(velocidadeY)   ))/1.5;velocidadeY=-2*(velocidadeX+(-velocidadeY))/3;estado=solado3;cont_animacao=0;velocidadeRotacao=velocidadeRotacao+(-25*dir);}

	if(cont_animacao==0){
	
	image_blend = c_red;
	
	if(velxReal!=false){velocidadeX=velxReal}else
	velocidadeXadd = soladovelx;
	
	velocidadeY = soladovely;
	
	}else{image_blend = c_white};


	if(veldir==1){lado="esquerda";}else{lado="direita";}

	cont_animacao++;
	
	if(chao)and(velocidadeY==0){estado=nochao;cont_animacao=0;};


	velxReal=false;
	
	image_angle = angulo;


}