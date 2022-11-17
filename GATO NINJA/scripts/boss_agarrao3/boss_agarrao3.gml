// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function boss_agarrao3(){
	/*
		obj_gato.velocidadeX = -dir*11;
		obj_gato.estado=solado;
	*/	
	
		sprite_index = img_agarrao3;
	
		proporcao = sprite_get_number(sprite_index)/25;
	
		image_index = floor((proporcao*cont_animacao));
		
	
	if(cont_animacao=10){
	obj_gato.velocidadeX = -dir*11;
	obj_gato.velocidadeY = -1;
	
	obj_gato.estado=solado;
	obj_gato.soladotempo = 20;
	obj_gato.veldir = -dir;
	}
	
	
	cont_animacao++;
	
	if(cont_animacao>=25){atacou=false;estado=parado;cont_animacao=0;modo="luta";if(lado=="direita"){lado="esquerda"}else{lado="direita"};
		
		
		
		
		
		
		};

}