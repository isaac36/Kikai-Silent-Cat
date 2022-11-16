// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gato_escondido(){
	
sprite_index = spr_gato_escondendo;
	
image_index = floor(cont_animacao);
	
if(cont_animacao>18){cont_animacao=2;}
	
cont_animacao=cont_animacao+0.2;
	
if(BOTAO_ATAQUE2)and(cont_animacao>=2){
	
	if(BOTAO_ESQUERDA)or(BOTAO_DIREITA){estado=andando}else{estado=parado;}
	
	cont_animacao=0;};
	
}