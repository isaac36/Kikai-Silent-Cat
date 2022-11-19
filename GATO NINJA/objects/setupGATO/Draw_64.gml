
if(modo==2)and(room==Menu){
	
	contmodo2++;
	if(contmodo2>20){pode_apertar=true}

draw_set_halign(fa_middle);
draw_sprite_ext(spr_tela_escura,0,320,180,30,30,0,c_white,0.8);

draw_set_font(Fonte_dialogo);
draw_text(640,310,"Ativar modo leve? (Tirar efeitos de luz)");
draw_text(580,400,"SIM");
draw_text(700,400,"NAO");

draw_sprite(spr_faca,0,530+(cursormodoleve*120),410);

if(keyboard_check_pressed(BOTAO_DIREITA_SETUP))or(keyboard_check_pressed(BOTAO_ESQUERDA_SETUP)){

cursormodoleve=!cursormodoleve;

}

if(keyboard_check_pressed(BOTAO_ATAQUE_SETUP))and(pode_apertar=true){modo=1;modoleve=!cursormodoleve};



}




