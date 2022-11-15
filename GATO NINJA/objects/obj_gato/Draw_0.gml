/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self();

if(place_meeting(x,y,obj_porta)){
	
draw_sprite(spr_K,0,x,y-120);

}

if(alvo!=-1){
distanciaDoAlvo = distance_to_object(alvo);
}else{distanciaDoAlvo=999999}



if(distanciaDoAlvo<=distanciaExecucao)and(place_meeting(x,y,obj_oportunidade))and(estado!=gato_assassinato)and(estado!=gato_hitkill){

draw_sprite(spr_K,0,x,y-120);




}

if(keyboard_check_pressed(vk_space)){if(debug==true){debug=false;} else{debug=true;}}

image_blend=croma;
//if(estado==dash){image_blend=make_color_rgb(150,150,150);};






if(debug==true){
/*	
draw_set_color(c_white);

draw_text(x-50,y-140,"distanciaExecucao: "+string(distanciaExecucao));

draw_text(x-50,y-120,"alvo: "+string((alvo)));

draw_text(x-50,y-100,"distanciaDoAlvo: "+string(distanciaDoAlvo));
*/
draw_text(x-50,y-80,"apanhou: "+string(apanhou));

draw_text(x-50,y-60,"x: "+string(x));
draw_text(x-50,y-40,"y: "+string(y));


if(instance_exists(ultimosanguehit)){
draw_sprite(ultimosanguehit.sprite_index,8,x,y-100);
}
}
