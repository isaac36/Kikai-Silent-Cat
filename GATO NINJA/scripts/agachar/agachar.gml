// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function agachar(){
	
	mask_index = spr_gato_colisao_mask_agachado;

	if(cont_animacao<4){sprite_index = spr_gato_agachando;}
	if(cont_animacao>=4){sprite_index =spr_gato_agachado;}
	
	
	if(BOTAO_PULO)and(BOTAO_BAIXO)and(descer==false)and(chao){alarm[2]=2 ;descer=true;}
	if(!BOTAO_BAIXO)and(!place_meeting(x,y-17,obj_wall)){if(velocidadeX!=0)and(!place_meeting(x+velocidadeX,y-17+velocidadeY,obj_wall)){estado=andando;cont_animacao=0;}else{estado=parado;cont_animacao=0;}}
	if(!chao)and(!place_meeting(x,y-17,obj_wall))and(!place_meeting(x+velocidadeX,y-17+velocidadeY,obj_wall)){estado=caindo;cont_animacao=0;}
	
	
	
	
	
	
	
	if(BOTAO_DIREITA)and(!place_meeting(x+4,y,obj_wall)){if(velocidadeX<2.7)velocidadeX=velocidadeX+1;lado="direita";sprite_index=spr_gato_agachado_andando;}
	if(BOTAO_ESQUERDA)and(!place_meeting(x-4,y,obj_wall)){if(velocidadeX>-2.7)velocidadeX=velocidadeX-1;lado="esquerda";sprite_index=spr_gato_agachado_andando;}

	

	
	
	
	
	
	
	
	cont_animacao++;

}