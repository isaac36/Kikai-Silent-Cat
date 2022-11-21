/// @description Insert description here
// You can write your code in this editor

angulo = angulo + velangulo;
if(velangulo>0){velangulo=velangulo-0.1}
if(velangulo<0){velangulo=velangulo+0.1}
/*
draw_text(x,y-20,"velx"+string(velx));
draw_text(x,y-40,"vely"+string(velV));
draw_text(x,y-60,"velangulo"+string(velangulo));
draw_text(x,y-80,"angulo"+string(angulo));
*/
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,angulo,image_blend,image_alpha)
