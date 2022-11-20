// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function gato_assassinato(){
	sprite_index=spr_gato_dash;
	
	proporcao = sprite_get_number(sprite_index)/30;
	
	image_index = floor((proporcao*cont_animacao));
	
	
	if(alvo.x-25>x){velocidadeX=5;lado="direita";}
	if(alvo.x+25<x){velocidadeX=-5;lado="esquerda";}
	
	
	if(alvo.x-40>x){velocidadeX=10;lado="direita";}
	if(alvo.x+40<x){velocidadeX=-10;lado="esquerda";}
	
if(cont_animacao==0){
	
	
	
	
	
	
	
	tempo=(alvo.x-x)/velocidadeX;
	velocidadeY = ((alvo.y-alvo.sprite_height/2)-y)/tempo;
	
	
	
	
	
velocidadeY=abs(velocidadeY);
if(velocidadeY>3.5){velocidadeY=3.5}
if((alvo.y-alvo.sprite_height/2)<y){velocidadeY=-velocidadeY;}
	}
	
	
	
	
	cont_animacao++;
	
	
if(place_meeting(x,y,alvo))or(place_meeting(x+velocidadeX,y+velocidadeY,alvo)){estado=gato_hitkill;cont_animacao=0;alvo=-1;};
	
	
if(cont_animacao=30){
	if(!chao){estado=caindo}else{estado=parado};cont_animacao=0;
}






if(alvo.y<=y){descer=false}

}