draw_set_colour(c_white);
draw_set_halign(fa_center);
//draw_text(640,100,string(minutos) + ":" + string_repeat("0", 2 - string_length(string(segundos))) + string(segundos));

draw_text_transformed(room_width/2, 96, string_hash_to_newline(string(minutos) + ":" + string_repeat("0", 2 - string_length(string(segundos))) + string(segundos)), 2, 2, 0);

