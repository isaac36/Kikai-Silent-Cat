/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if(global.pause){




if(modo == "tela1"){
draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_font(font_padrao);


draw_sprite_ext(spr_tela_escura,0,
camera_get_view_width(view_camera[0]),
camera_get_view_height(view_camera[0]),
30,30,0,c_white,0.7);

if(keyboard_check_pressed(setupGATO.BOTAO_BAIXO_SETUP)){pausecursor++}
if(keyboard_check_pressed(setupGATO.BOTAO_CIMA_SETUP)){pausecursor--}
if(pausecursor>1){pausecursor=0};
if(pausecursor<0){pausecursor=1};




//TEXTO
//draw_set_font();
draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_font(font_GAMEOVER);

//Despausar
draw_text_color(camera_get_view_width(view_camera[0]),
camera_get_view_height(view_camera[0])-50,"Retomar",c_white,c_white,c_white,c_white,(0==pausecursor)+0.5);

//Sair
draw_text_color(camera_get_view_width(view_camera[0]),
camera_get_view_height(view_camera[0])+50,"Sair",c_white,c_white,c_white,c_white,(1==pausecursor)+0.5);

if(pausecursor==0)and(keyboard_check_pressed(setupGATO.BOTAO_ATAQUE_SETUP)){global.pause=false};
if(pausecursor==1)and(keyboard_check_pressed(setupGATO.BOTAO_ATAQUE_SETUP)){room_goto(Menu);};
}

}