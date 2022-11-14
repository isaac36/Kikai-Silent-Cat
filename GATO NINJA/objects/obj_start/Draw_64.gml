if (fade==false){
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_colour(c_white);

start_count+=1;

if (start_count<20){
draw_set_font(font_padrao);
draw_text_transformed(room_width / 2, room_height*0.85, string_hash_to_newline("Pressione ENTER para jogar!"), 2, 2, 0);}
else if (start_count>=30){
start_count=0;
}
}

if (fade==true){
    draw_set_alpha(alpha);
    draw_set_colour(c_black);
    draw_rectangle(0, 0, room_width, room_height, c_black);
}

