// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function nochao(){
	
	image_angle = 0;
	sprite_index = img_morto;
	/*image_index = 4;
	if(cont_animacao>3){image_index = 5;};
	if(cont_animacao>10){sprite_index = img_caido;image_index = 4;}
*/
cont_animacao++;

if (!chao){estado=solado2}

if(cont_animacao>60){estado=parado;}
}