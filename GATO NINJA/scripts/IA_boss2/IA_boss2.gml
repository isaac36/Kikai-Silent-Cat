// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function IA_boss2(){





velocidadePersonagem=6;

		if(instance_exists(obj_porta)){obj_porta.pode_abrir=false;}
	
	


if(instance_exists(loop_controlador)){
		loop_controlador.modoinimigo = 2;
}

if(instance_exists(obj_gato))and(estado!=solado)and(estado!=dash){
	
	    aleatorio = irandom_range(0,20);
		
		
		
		
		
		
		if(obj_gato.x<x){BOTAO_DIREITA=true;}else{BOTAO_DIREITA=false;}
		if(obj_gato.x>x){BOTAO_ESQUERDA=true;}else{BOTAO_ESQUERDA=false;}
	
	
	
	
	if((place_meeting(x+velocidadeX,y,obj_wall))or(place_meeting(x+velocidadeX,y,obj_patrulhavolta)))and(!atacou){
	atacou=true;
	
	

	

	velocidadeAgarrao = 10+(abs(vidamax-vida)/120);
	
	tempo=(obj_gato.x-x)/15;//coloque a velocidadeX nesse 15
	velocidadeY = (-abs(((obj_gato.y-obj_gato.sprite_height/2)-y)/velocidadeAgarrao)*2.5)-(aleatorio/10);
	
	if(velocidadeY<-12){velocidadeY=-12}

	//quando menor a vida mais rapido


	cont_animacao=0;
	if(obj_gato.x>=x){lado="direita";estado=boss_ataque2;};
	if(obj_gato.x<x){lado="esquerda";estado=boss_ataque2;};

	
	}
	

	
	
	
}
	
	
	



}