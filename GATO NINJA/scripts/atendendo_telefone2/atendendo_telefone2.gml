// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function atendendo_telefone2(){
	
	if(cont_cena<6){cont_cena=6}
	if(cont_cena>14){cont_cena=6}

	obj_gato.sprite_index = spr_gato_telefone2;
	obj_gato.image_index = floor(cont_cena)
	
	
	
	
	cont_cena=cont_cena+0.1;
	
   pode_passar=true;
}