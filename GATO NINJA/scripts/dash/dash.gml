function dash() {
	sprite_index = img_dash;
	invuneravel=true;
	
	velocidadeY=0;

	if(cont_animacao==0){audio_play_sound(dashsound,0,0);
		target = instance_create(x+5*dir,y,obj_poeira_correndo);
		target.image_xscale = -dir;
		
		}
		
    
	if(lado=="esquerda"){if(velocidadeX>-dashVelMinima)velocidadeX=-dashVelMinima;velocidadeX=velocidadeX-dashforce;}
	if(lado=="direita"){if(velocidadeX<dashVelMinima)velocidadeX=dashVelMinima;velocidadeX=velocidadeX+dashforce;}
	
	cont_animacao++;

	if (sprite_index==spr_gato_dash)and(image_index==5) {

	if(chao){estado=andando;sprite_index=img_andando;cont_animacao=0;}
	if(!chao){estado=caindo;cont_animacao=0;sprite_index=img_caindo;}
	
	
	
	if(lado="direita")and(velocidadeX>0)and(place_meeting(x+1,y,obj_wall_escalavel))and(!place_meeting(x,y+5,obj_wall)){

	estado = escorar;cont_animacao=0;sprite_index = spr_gato_escorando;

	}
	
	if(lado="esquerda")and(velocidadeX<0)and(place_meeting(x-1,y,obj_wall_escalavel))and(!place_meeting(x,y+5,obj_wall)){

	estado = escorar;cont_animacao=0;sprite_index = spr_gato_escorando;

	}


	}



}
