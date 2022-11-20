/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(chavefinal){

draw_sprite_ext(spr_chavefinal,0,

620,

50,

1,1,0,c_white,1

);

}


if(chavea>0){

draw_sprite_ext(spr_cartao,0,

560,

50,

1,1,0,c_white,1

);

}

if(chaveb>0){

draw_sprite_ext(spr_cartao2,0,

600,

50,

1,1,0,c_white,1

);

}

for(i=0;i<vidamax;i++){
	
draw_sprite_ext(spr_barrinha_de_life_red,0,

(camera_get_view_width(view_camera[0])/10)+i,

camera_get_view_height(view_camera[0])/8,

1,2,0,c_white,1

);

}

for(i=0;i<vida;i++){
	
draw_sprite_ext(spr_barrinha_de_life,0,

(camera_get_view_width(view_camera[0])/10)+i,

camera_get_view_height(view_camera[0])/8,

1,2,0,c_white,1

);

}



if(cont_gameover>0){

draw_sprite_ext(spr_sangue_GAMEOVER,0,

(camera_get_view_width(view_camera[0])),

(camera_get_view_height(view_camera[0])/10)+cont_gameover,

2,2,0,c_white,1

);

if(cont_gameover>1900){cont_gameover=1900}

if(cont_gameover>1800){
	
c1 = c_red;
c2 = make_color_rgb(150,50,50);
c3 = c_white;
c4 = make_color_rgb(150,50,50);

draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_font(font_GAMEOVER);

draw_text_ext_color(camera_get_view_width(view_camera[0]),220,"GAME OVER",0,1000,c1,c2,c3,c4,(cont_gameover-1800)/100);

draw_set_font(Fonte_dialogo);
draw_text_ext_color(camera_get_view_width(view_camera[0]),420,"Continuar?",0,1000,c_white,c_white,c_white,c_white,(cont_gameover-1800)/100);

draw_text_ext_color(camera_get_view_width(view_camera[0])-120,520,"SIM",0,1000,c_white,c_white,c_white,c_white,(cont_gameover-1800)/100);
draw_text_ext_color(camera_get_view_width(view_camera[0])+120,520,"NÃO",0,1000,c_white,c_white,c_white,c_white,(cont_gameover-1800)/100);

draw_text_ext_color(camera_get_view_width(view_camera[0])-120+(240*gameover_cursor),520,(gameover_cursor==0)?"SIM":"NÃO",0,1000,c1,c2,c3,c4,(cont_gameover-1800)/100);

}
if(cont_gameover==1900){
	
	if(keyboard_check_released(BOTAO_ATAQUE_SETUP)){
	
	if(gameover_cursor==0){x=global.ondeX;y=global.ondeY;vida=vidamax;estado=parado;cont_gameover=0;room_restart();
		
	//Reset de itens
	
obj_gato.chavea=global.chavea;
obj_gato.chaveb=global.chaveb;
obj_gato.chavefinal=global.chavefinal;
		
		
		}
	if(gameover_cursor==1){room_goto(Menu)}
	
	}
	
	if(keyboard_check_released(setupGATO.BOTAO_ESQUERDA_SETUP))or(keyboard_check_released(setupGATO.BOTAO_DIREITA_SETUP)){gameover_cursor=!gameover_cursor}
	
	
	}
}