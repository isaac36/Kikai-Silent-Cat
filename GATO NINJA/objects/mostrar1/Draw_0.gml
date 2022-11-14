draw_self();

draw_set_halign(fa_middle);

if(!is_string(setup1.cursor)){
draw_set_font(font_padrao);
draw_set_colour(c_white);
draw_text_transformed(x,y+160,string_hash_to_newline(imagem[setup1.cursor+100]),2,2,0);
}

