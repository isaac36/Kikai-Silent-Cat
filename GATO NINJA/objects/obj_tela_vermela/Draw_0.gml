/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


draw_self();

draw_sprite_ext(dono.sprite_index,dono.image_index,dono.x,dono.y,dono.image_xscale,dono.image_yscale,dono.image_angle,make_color_rgb(0,0,0),image_alpha)

draw_sprite_ext(dono.ultimoalvo.sprite_index,dono.ultimoalvo.image_index,dono.ultimoalvo.x,dono.ultimoalvo.y,dono.ultimoalvo.image_xscale,dono.ultimoalvo.image_yscale,dono.ultimoalvo.image_angle,make_color_rgb(0,0,0),image_alpha)

if(instance_exists(dono.ultimosangueparede)){draw_sprite_ext(dono.ultimosangueparede.sprite_index,dono.ultimosangueparede.image_index,dono.ultimosangueparede.x,dono.ultimosangueparede.y,dono.ultimosangueparede.image_xscale,dono.ultimosangueparede.image_yscale,dono.ultimosangueparede.image_angle,make_color_rgb(0,0,0),image_alpha)}

if(instance_exists(dono.ultimosanguehit)){draw_sprite_ext(dono.ultimosanguehit.sprite_index,dono.ultimosanguehit.image_index,dono.ultimosanguehit.x,dono.ultimosanguehit.y,dono.ultimosanguehit.image_xscale,dono.ultimosanguehit.image_yscale,dono.ultimosanguehit.image_angle,make_color_rgb(0,0,0),image_alpha)}
