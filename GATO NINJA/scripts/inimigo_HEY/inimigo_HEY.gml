// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function inimigo_HEY(){

	if(cont_animacao==0){image_index=0;}
	
	
	if(gato.x>x){lado="direita";}
		
	if(gato.x<x){lado="esquerda";}
		
	sprite_index = spr_inimigo_alerta;
	
	proporcao = sprite_get_number(sprite_index)/50;
	
	image_index = floor((proporcao*cont_animacao));


if(cont_animacao==10){
	
targethey = instance_create(x,y-sprite_height-30,obj_HEY);
targethey.dono=id;
	
}

cont_animacao++;
if(cont_animacao>=50){estado=parado;cont_animacao=0;modo="luta"};

}