// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function atendendo_telefone(){
	if(cont_cena<50){
	
	obj_gato.sprite_index = spr_gato_telefone;
		
	proporcao = sprite_get_number(spr_gato_telefone)/50;
	
	obj_gato.image_index = floor((proporcao*cont_cena));

	}else{
		
	obj_gato.sprite_index = spr_gato_telefone2;
	obj_gato.image_index = floor((proporcao*cont_cena));
	
	
	
	}
	
	cont_cena++;
	if(cont_cena>95){cont_cena=50;pode_passar=true;}

}