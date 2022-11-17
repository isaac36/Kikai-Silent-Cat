// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function boss_ataque2(){
	
	invuneravel=true;
	sprite_index = img_dash;
	
	image_index = floor(cont_animacao/4);
	
	if((cont_animacao/4)>=2){image_index=2};
	
	if(cont_animacao==0){
	
if(lado=="direita"){velocidadeAgarrao=velocidadeAgarrao}else{velocidadeAgarrao=-velocidadeAgarrao}

	}
	
	velocidadeX=velocidadeAgarrao;
	
	cont_animacao++;
	
	
	if(distance_to_object(obj_gato)<80){estado=boss_agarrao;cont_animacao=0;};
	
	if(cont_animacao>100){estado=parado;modo="luta"}

}