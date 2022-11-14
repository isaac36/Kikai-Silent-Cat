draw_set_colour(c_white);
draw_set_halign(fa_right);
draw_text(room_width-136,72,string_hash_to_newline(nome + " " + string(vida)));
/*if(vida > 75){
draw_sprite(spr_vida, 0, 1050, 150);}
if(vida <= 75 and vida > 50){
draw_sprite(spr_vida, 1, 1050, 150);}
if(vida <= 50 and vida > 25){
draw_sprite(spr_vida, 2, 1050, 150);}
if(vida <= 25 and vida > 0){
draw_sprite(spr_vida, 3, 1050, 150);}
if(vida <= 0){
draw_sprite(spr_vida, 4, 1050, 150);}*/
//draw_sprite(spr_vida, 0, 1050, 150);

var col = make_colour_hsv(vida, 255, 255);

draw_sprite_ext(spr_vida, 0, room_width-136, 96, -1, 1, 0, c_black, 1);
draw_sprite_ext(spr_vida, 0, room_width-136, 96, vida*-0.01, 1, 0, col, 1);

if (vida_check != vida){
    draw_sprite_ext(retrato2, 0, room_width-64+random_range(-1, 2), 64+random_range(-1, 2), -1, 1, 0, c_white, 1);
    if (hit_anim >= 16){
        vida_check = vida;
        hit_anim=0;}
    hit_anim+=1;
}
else if (vida <= 0) {
    draw_sprite_ext(retrato2, 1, room_width-64, 64, -1, 1, 0, c_white, 1);
    }
else{
    draw_sprite_ext(retrato1, 0, room_width-64, 64, -1, 1, 0, c_white, 1);
    }


/* */
/*  */
