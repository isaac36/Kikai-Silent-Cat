// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function solado2(){
	
	if(modo=="patrulha")and(vida>0)modo="luta";
	
	sprite_index = img_jogado;
	
	if(place_meeting(x+velocidadeX,y,obj_wall)){velocidadeX*=-1/2;veldir*=-1;};
	
	
	
	
	
	
	
	if(place_meeting(x+velocidadeX,y+velocidadeY,obj_plataforma)){
	plataforma = instance_place(x,y+velocidadeY,obj_plataforma)} else plataforma = -1;

	if(place_meeting(x,y+velocidadeY,obj_wall)){if(abs(velocidadeY)<3){velocidadeY=0}else{velocidadeY*=-2/3;cont_animacao=1;};instance_create(x,y,obj_poeira_pulo_ar);};
	//if(place_meeting(x+velocidadeX,y,obj_wall)){velocidadeX=-(sign(velocidadeX))*(     (abs(velocidadeX)     )  +  (   abs(velocidadeY)   ))/1.5;velocidadeY=-2*(velocidadeX+(-velocidadeY))/3;estado=solado3;cont_animacao=0;velocidadeRotacao=velocidadeRotacao+(-25*dir);}
    if(place_meeting(x,y+velocidadeY,obj_plataforma))and(!descer)and(velocidadeY>0)and(plataforma!=-1)and(plataforma.y>=y)and(velocidadeY>0){if(abs(velocidadeY)<3){velocidadeY=0}else{velocidadeY*=(-2/3);cont_animacao=1;};instance_create(x,y,obj_poeira_pulo_ar);};

	
	image_index = 0;
	if(cont_animacao>5){image_index=1;}
	
	
	
	if(cont_animacao>10){image_index=2;}
	if(cont_animacao>15){image_index=3;}
	
	
	if(cont_animacao==0){
	
	image_blend = c_red;
	
	if(velxReal!=false){velocidadeX=velxReal}else
	velocidadeXadd = soladovelx;
	
	velocidadeY = soladovely;
	
	}else{image_blend = c_white};


	if(veldir==1){lado="esquerda";}else{lado="direita";}

	cont_animacao++;
	
	if(chao)and(velocidadeY==0)and(cont_animacao>15){estado=nochao;cont_animacao=0;};


	velxReal=false;
	


}