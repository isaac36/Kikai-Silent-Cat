// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function IA_luta1(){
	
	img_andando = spr_inimigo_correndo;

	loop_controlador.modoinimigo = "luta";

if(instance_exists(obj_gato))and(estado!=solado)and(estado!=dash){
	
	
	
		if(obj_gato.y-10>y){descer=true;}else{descer=false;}
		if(obj_gato.x-10>x){BOTAO_DIREITA=true;}else{BOTAO_DIREITA=false;}
		if(obj_gato.x+10<x){BOTAO_ESQUERDA=true;}else{BOTAO_ESQUERDA=false;}
	
	    if(place_meeting((x+dir),y,obj_wall))or(obj_gato.y+10<y){paciencia++};
		
		if(paciencia>50)and(pulo>0)and(chao){BOTAO_PULO=true;paciencia=0;}
	
	   
		if(place_meeting(x+dir*(10),y,obj_gato)){
			
			paciencia=0;
			
			aleatorio = irandom_range(0,20);
			
			if(aleatorio<2)and(estado!=dash){BOTAO_DASH=true;}else{BOTAO_DASH=false;}
			if(aleatorio>=2){BOTAO_ATAQUE=true;}
			
			};
	
	

	
	
	
}
	
	
	

}