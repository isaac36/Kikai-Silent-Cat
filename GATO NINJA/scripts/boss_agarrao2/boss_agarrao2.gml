// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function boss_agarrao2(){
	
		obj_gato.estado = gato_agarrado;
	
		sprite_index = img_agarrao2;
	
		proporcao = sprite_get_number(sprite_index)/50;
	
		image_index = floor((proporcao*cont_animacao));
		
		obj_gato.vida=obj_gato.vida-(1/6);
		
		if(cont_animacao%10==0){instance_create(x,y,obj_screenshake)}
		
	
	
	
	cont_animacao++;
	
	if(cont_animacao>=150){estado=boss_agarrao3;cont_animacao=0;modo="luta"};

}