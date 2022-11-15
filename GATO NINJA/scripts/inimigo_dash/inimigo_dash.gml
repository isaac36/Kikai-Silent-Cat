// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function inimigo_dash(){
	

	image_index=0;
	if(lado=="direita"){velocidadeX=-7;}else{velocidadeX=7;}

	
	sprite_index = img_caindo;
	
	proporcao = sprite_get_number(sprite_index)/15;
	
	image_index = floor((proporcao*cont_animacao));
	

	
	
	
	
	
	
	cont_animacao++;
	if(cont_animacao>=10){estado=caindo;cont_animacao=0;}
	
}