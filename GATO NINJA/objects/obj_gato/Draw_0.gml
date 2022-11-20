/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();


if(instance_exists(obj_porta)){
	
	porta=instance_nearest(x,y,obj_porta)}else{porta="naotem"};


frequencia_desenho = frequencia_desenho+0.5;
if(frequencia_desenho>20){frequencia_desenho=0}
	
if((porta!="naotem")and(porta.fechar==false)and(place_meeting(x,y,porta))and(porta.pode_abrir==true))or((distance_to_object(obj_trancado_wall)<4)and(obj_gato.chavea>0))or((distance_to_object(obj_trancado_wall)<4)and(obj_gato.chaveb>0))or((distance_to_object(obj_trancado_wall)<4)and(obj_gato.chavea>0)){

draw_sprite(spr_botao,floor(frequencia_desenho/10),x,y-80);

}

if(alvo!=-1){
distanciaDoAlvo = distance_to_object(alvo);
}else{distanciaDoAlvo=999999}



if(distanciaDoAlvo<=distanciaExecucao)and(place_meeting(x,y,obj_oportunidade))and(estado!=gato_assassinato)and(estado!=gato_hitkill){

	
draw_sprite(spr_botao,floor(frequencia_desenho/10),x,y-80);



}

//draw_text(x,y,instance_number(loop_controlador))

//if(keyboard_check_pressed(ord("B"))){debug=!debug}

//image_blend=croma;
//if(estado==dash){image_blend=make_color_rgb(150,150,150);};







/*	
draw_set_color(c_white);

draw_text(x-50,y-140,"distanciaExecucao: "+string(distanciaExecucao));

draw_text(x-50,y-120,"alvo: "+string((alvo)));

draw_text(x-50,y-100,"distanciaDoAlvo: "+string(distanciaDoAlvo));

draw_text(x-50,y-140,"alarm2: "+string((alarm[2])));
draw_text(x-50,y-120,"alarm1: "+string((alarm[1])));
draw_text(x-50,y-100,"alarm0: "+string((alarm[0])));
draw_text(x-50,y-80,"image_index: "+string((image_index)));


draw_text(x-50,y-60,"x: "+string(x));
*/
/*
if(instance_exists(loop_controlador)){
draw_text(x-50,y-40,"loop_controlador.modoinimigo: "+string(loop_controlador.modoinimigo));
}

