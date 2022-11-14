function win() {
	sprite_index = img_win;




	if(room==room_selecao){instance_destroy();}

	if(!instance_exists(obj_transicao_para_selecao)){instance_create(x,y,obj_transicao_para_selecao)};
	velocidadeXFINAL = 0;
	velocidadeY = 0;



}
