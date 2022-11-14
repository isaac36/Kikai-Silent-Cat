draw_self();



image_index=0;







if(desenha1==true)and(!setup1.escolheu){
//draw_sprite(quadrado_selecao_player1,0,x,y);
draw_sprite_ext(quadrado_selecao_player1,0,x,y, 2, 2, 0, c_white, anim_alpha);
}
else if(desenha1==true)and(setup1.escolheu){
//draw_sprite(quadrado_selecao_player1,0,x,y);
draw_sprite_ext(quadrado_selecao_player1,1,x,y, 2, 2, 0, c_white, 1);
}

if(desenha2==true)and(!setup2.escolheu){
//draw_sprite(quadrado_selecao_player2,0,x,y);
draw_sprite_ext(quadrado_selecao_player2,0,x,y, 2, 2, 0, c_white, 1-anim_alpha);
}
else if(desenha2==true)and(setup2.escolheu){
//draw_sprite(quadrado_selecao_player2,0,x,y);
draw_sprite_ext(quadrado_selecao_player2,1,x,y, 2, 2, 0, c_white, 1);
}

