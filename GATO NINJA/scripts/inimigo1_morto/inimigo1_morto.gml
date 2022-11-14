// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function inimigo1_morto(){
	
	if(veldir==1){lado="esquerda";}else{lado="direita";}
	modo="morto";
	sprite_index = img_morto;
	mask_index = sem_mascara;
	image_blend = c_white;
	

}