/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_set_font(Fonte_dialogo);
draw_set_halign(fa_middle);


movimento_pendular = movimento_pendular + velocidade_pendular;

if(movimento_pendular>10){velocidade_pendular-=0.05};
if(movimento_pendular<-10){velocidade_pendular+=0.05};


if(velocidade_pendular>1){velocidade_pendular=5}
if(velocidade_pendular<-1){velocidade_pendular=-5}



if(comecou==true){

draw_sprite_ext(spr_telabranca,0,640,850,30,10,0,make_color_rgb(30,30,30),1);
draw_set_color(c_white);
draw_text_ext(640,570,fala[cont_dialogo],0,800);

if(pode_passar){
draw_text_ext_color(640,670 + movimento_pendular/5,"PASSAR:(U)",0,500,c_red,c_red,c_white,c_white,1);
}

draw_sprite_ext(face[cont_dialogo],0,640+(-lado[cont_dialogo]*500),630,lado[cont_dialogo]*2,2,movimento_pendular,c_white,1);
}

/*
draw_set_color(c_green);
draw_text_ext(640,300,"cont_cena:"+string(cont_cena),0,600);
draw_text_ext(640,250,"pode_passar:"+string(pode_passar),0,600);
draw_text_ext(640,200,"cont_cena:"+string(cont_cena),0,600);
*/