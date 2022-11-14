if keyboard_check_pressed(vk_escape){game_restart();}

if(keyboard_check_released(vk_space)){global.setinhas=-global.setinhas;}


//SELECAO DE PERSONAGEM


//ESCOLHENDO

if(room==room_selecao)and(escolheu==false){


if(player.BOTAO_ESQUERDA){

if(cursor=="SETUP"){cursor=5;}else
cursor--;

};

if(player.BOTAO_DIREITA){

if(cursor=="SETUP"){cursor=0;}else
cursor++;

};

if(player.BOTAO_BAIXO){

if(cursor=="SETUP"){cursor=0;}else
cursor=cursor+2;

};

if(player.BOTAO_CIMA){

if(cursor=="SETUP"){cursor=4;}else
cursor=cursor-2;

};



if(is_numeric(cursor)){if(cursor<=-1){cursor="SETUP";}}
if(is_numeric(cursor)){if(cursor>5){cursor=0;}}




if(is_numeric(cursor))and(player.BOTAO_ATAQUE)and(cursor<4){

lenda = personagem[cursor];

escolheu = true;



}

if(cursor=="SETUP")and(player.BOTAO_ATAQUE){audio_stop_all(); room_goto(room_controles)};











//
}
























//ESCOLHEU

if(room==room_selecao)and(escolheu==true){

if(player.BOTAO_PULO){


if(transicao==false)escolheu=false;



};
























//IR PARA O JOGO
if(setup2.escolheu){













transicao = true;

if transicao == true {alpha_transicao=alpha_transicao+0.005;

if(!audio_is_playing(OST_selecao3)){audio_stop_all();audio_play_sound(OST_selecao3,0,0);};

}

if(alpha_transicao>=1){






player1.lenda = instance_create(416,656,lenda);

 


player2.lenda = instance_create(864,656,setup2.lenda);
player2.lenda.lado = "esquerda";



room_goto(room_amazonia);


alpha_transicao = 0;
escolheu = false;
setup2.escolheu = false;
transicao = false;

}

}



}