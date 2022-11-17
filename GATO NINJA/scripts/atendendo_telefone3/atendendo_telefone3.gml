// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function atendendo_telefone3(){
	while(obj_gato.y<y){obj_gato.y++};
	
	if(cont_cena>9){obj_gato.image_index=8;pode_passar =true;}else{
		
	obj_gato.sprite_index = spr_gato_telefone3;
	obj_gato.image_index = floor(cont_cena);

cont_cena=cont_cena+0.1;
	}



}