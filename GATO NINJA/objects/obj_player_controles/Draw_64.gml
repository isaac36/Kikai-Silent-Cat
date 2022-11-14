draw_self();

if(room==room_controles){
//keyboard_key;

draw_set_halign(fa_center);
draw_set_font(font_grande);
draw_set_color(c_white)



draw_text(0.25*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0,string_hash_to_newline("PLAYER 1"));
draw_text(0.75*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0,string_hash_to_newline("PLAYER 2"));


draw_set_halign(fa_left);






if(cursorV!="VOLTAR"){

draw_sprite(img,0,(0.15*__view_get( e__VW.WView, 0 ))+(cursorH*0.5*__view_get( e__VW.WView, 0 )),(__view_get( e__VW.HView, 0 )*0.1)+(cursorV*(0.05*__view_get( e__VW.HView, 0 ))));

}









draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.1,string_hash_to_newline("CIMA"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.1,string_hash_to_newline(player_config[0,0]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.15,string_hash_to_newline("BAIXO"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.15,string_hash_to_newline(player_config[0,1]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.2,string_hash_to_newline("ESQUERDA"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.2,string_hash_to_newline(player_config[0,2]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.25,string_hash_to_newline("DIREITA"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.25,string_hash_to_newline(player_config[0,3]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.30,string_hash_to_newline("PULO"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.3,string_hash_to_newline(player_config[0,4]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.35,string_hash_to_newline("DASH"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.35,string_hash_to_newline(player_config[0,5]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.40,string_hash_to_newline("ATK"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.4,string_hash_to_newline(player_config[0,6]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.45,string_hash_to_newline("ATK2"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.45,string_hash_to_newline(player_config[0,7]));
draw_text(0.15*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.50,string_hash_to_newline("SPECIAL"));draw_text(0.4*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.50,string_hash_to_newline(player_config[0,8]));





draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.1,string_hash_to_newline("CIMA"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.1,string_hash_to_newline(player_config[1,0]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.15,string_hash_to_newline("BAIXO"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.15,string_hash_to_newline(player_config[1,1]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.2,string_hash_to_newline("ESQUERDA"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.2,string_hash_to_newline(player_config[1,2]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.25,string_hash_to_newline("DIREITA"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.25,string_hash_to_newline(player_config[1,3]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.3,string_hash_to_newline("PULO"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.3,string_hash_to_newline(player_config[1,4]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.35,string_hash_to_newline("DASH"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.35,string_hash_to_newline(player_config[1,5]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.4,string_hash_to_newline("ATK"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.4,string_hash_to_newline(player_config[1,6]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.45,string_hash_to_newline("ATK2"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.45,string_hash_to_newline(player_config[1,7]));
draw_text(0.65*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.5,string_hash_to_newline("SPECIAL"));draw_text(0.9*__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 )*0.5,string_hash_to_newline(player_config[1,8]));

}


