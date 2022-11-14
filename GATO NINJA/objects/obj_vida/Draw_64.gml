draw_set_font(font_padrao);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_text(136,72,string_hash_to_newline(nome + " " + string(vida)));

/*if(vida > 75){
draw_sprite(spr_vida, 0, 150, 150);}
if(vida <= 75 and vida > 50){
draw_sprite(spr_vida, 1, 150, 150);}
if(vida <= 50 and vida > 25){
draw_sprite(spr_vida, 2, 150, 150);}
if(vida <= 25 and vida > 0){
draw_sprite(spr_vida, 3, 150, 150);}
if(vida <= 0){
draw_sprite(spr_vida, 4, 150, 150);}*/

var col = make_colour_hsv(vida, 255, 255);


draw_sprite_ext(spr_vida, 0, 136, 96, 1, 1, 0, c_black, 1);
draw_sprite_ext(spr_vida, 0, 136, 96, vida*0.01, 1, 0, col, 1);



if (vida_check > vida){
    draw_sprite(retrato2, 0, 64+random_range(-1, 2), 64+random_range(-1, 2));
    
//    draw_text(obj_curupira.x+hit_anim*dir, obj_curupira.y-128+vidamove, "-" + string(vida_check-vida));
    if (hit_anim >= 16){
        vida_check = vida;
        hit_anim = 0;
//        vidamove=64;
//        dir = choose(-1,0,1);
        }
    hit_anim+=1;
//    vidamove/=1.25;
}

else if (vida <= 0) {
    draw_sprite(retrato2, 1, 64, 64);
    }
else{
    draw_sprite(retrato1, 0, 64, 64);
    }

/* */
/*

draw_set_halign(fa_left);
draw_text(room_width/2, room_height/2-150, "xport: "+string(view_xport));
draw_text(room_width/2, room_height/2-130, "yport: "+string(view_yport));
draw_text(room_width/2, room_height/2-110, "hport: "+string(view_wport));
draw_text(room_width/2, room_height/2-90, "hport: "+string(view_hport));

draw_text(room_width/2, room_height/2-60, "xview: "+string(view_xview));
draw_text(room_width/2, room_height/2-40, "yview: "+string(view_yview));
draw_text(room_width/2, room_height/2-20, "wview: "+string(view_wview));
draw_text(room_width/2, room_height/2, "hview: "+string(view_hview));

draw_text(room_width/2, room_height/2+30, "hborder: "+string(view_hborder));
draw_text(room_width/2, room_height/2+50, "vborder: "+string(view_vborder));

draw_text(room_width/2, room_height/2+80, "obj_curupira.x: "+string(obj_curupira.x));
draw_text(room_width/2, room_height/2+100, "obj_curupira.y "+string(obj_curupira.y));

draw_text(room_width/2, room_height/2+130, "view_object[0] = obj_curupira; "+string((view_object[0] = obj_curupira)));

draw_text(view_xview-obj_curupira, view_yview-obj_curupira.y, string(vida));

*/

/* */
/*  */
