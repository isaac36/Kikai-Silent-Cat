// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function IA_boss1(){
	
	//MODO=LUTA
	


velocidadePersonagem=3;

    cont_boss++

	if(instance_exists(obj_gato)){
	
	
	if(cont_boss>300){modo="patrulha";cont_boss=0;}
	
	};

	if((instance_exists(obj_porta))and((distance_to_object(obj_gato))<300)){portafechada=instance_nearest(x,y,obj_porta);portafechada.pode_abrir=false;}


if(instance_exists(loop_controlador)){
		loop_controlador.modoinimigo = 2;
}
	if(instance_exists(obj_gato))and(estado!=solado)and(estado!=dash){
	
	    aleatorio = irandom_range(0,20);
	
	
		if(obj_gato.y-10>y){descer=true;}else{descer=false;}
		if(obj_gato.x-10>x){BOTAO_DIREITA=true;}else{BOTAO_DIREITA=false;}
		if(obj_gato.x+10<x){BOTAO_ESQUERDA=true;}else{BOTAO_ESQUERDA=false;}
	
	    if(place_meeting((x+dir),y,obj_wall))or(obj_gato.y+10<y){paciencia++};
		
		if(paciencia>50)and(pulo>0)and(chao){BOTAO_PULO=true;paciencia=0;}
	
	   
		if(place_meeting(x+dir*(10),y,obj_gato)){
			
			paciencia=0;
			
			
			
			if(aleatorio<5)and(estado!=dash){BOTAO_DASH=true;}else{BOTAO_DASH=false;}
			if(aleatorio>=5){BOTAO_ATAQUE=true;}
			
			};
	
	

	
	
	
}
	
	
	



}