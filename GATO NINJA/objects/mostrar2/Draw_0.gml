draw_self();

if(!is_string(setup2.cursor)){
draw_set_font(font_padrao);
draw_set_colour(c_white);
draw_text_transformed(x,y+160,string_hash_to_newline(imagem[setup2.cursor+100]),2,2,0);
}

