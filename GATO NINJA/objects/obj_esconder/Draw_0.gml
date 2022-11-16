/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

frequencia_desenho = frequencia_desenho+0.5;
if(frequencia_desenho>20){frequencia_desenho=0}

if(place_meeting(x,y,obj_gato))and(instance_nearest(x,y,obj_gato).estado!=gato_escondido){
draw_sprite_ext(spr_botao,floor(frequencia_desenho/10),x,y-100,1,1,0,make_color_rgb(120,70,100),1);
}
