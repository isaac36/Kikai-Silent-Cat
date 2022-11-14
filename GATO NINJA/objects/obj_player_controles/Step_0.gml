

if(keyboard_check_released(vk_escape)){game_restart();}


if(room==room_controles){













if(modo==0){

img = selecionar;

if(keyboard_check_pressed(vk_left)){

if(cursorV=="VOLTAR"){cursorV=0}else
cursorH--;
if(cursorH<0){cursorV="VOLTAR";cursorH=1}

}

if(keyboard_check_pressed(vk_right)){

if(cursorV=="VOLTAR"){cursorV=0}else
cursorH++;

if(cursorH>1){cursorV="VOLTAR";cursorH=0}

}

if(keyboard_check_pressed(vk_down)){

if(cursorV=="VOLTAR"){cursorV=0}else
cursorV++;

if(cursorV>8){cursorV="VOLTAR"};

}

if(keyboard_check_pressed(vk_up)){

if(cursorV=="VOLTAR"){cursorV=8}else
cursorV--;

if(cursorV<0){cursorV="VOLTAR"};

}



if(keyboard_check_released(vk_enter))and(cursorV!="VOLTAR"){

modo = 1;
img = selecionar_azul;

}

if(keyboard_check_released(vk_enter))and(cursorV=="VOLTAR"){

audio_stop_all();room_goto(room_selecao);

}



}




if(modo==1)and(keyboard_check_pressed(vk_anykey)){


botao = keyboard_key;
player_config[cursorH,cursorV]=botao;

alarm[0] = 5; //modo = 0;





/////configura os dos controles


player1.BOTAO_CIMA_SETUP = player_config[0,0];
player1.BOTAO_ESQUERDA_SETUP = player_config[0,2];
player1.BOTAO_DIREITA_SETUP = player_config[0,3];
player1.BOTAO_BAIXO_SETUP = player_config[0,1];

player1.BOTAO_PULO_SETUP = player_config[0,4];
player1.BOTAO_DASH_SETUP = player_config[0,5];
player1.BOTAO_ATAQUE_SETUP = player_config[0,6];
player1.BOTAO_ATAQUE2_SETUP = player_config[0,7];



player2.BOTAO_ESQUERDA_SETUP = player_config[1,2];
player2.BOTAO_DIREITA_SETUP = player_config[1,3];
player2.BOTAO_CIMA_SETUP = player_config[1,0];
player2.BOTAO_BAIXO_SETUP = player_config[1,1];

player2.BOTAO_PULO_SETUP = player_config[1,4];
player2.BOTAO_DASH_SETUP = player_config[1,5];
player2.BOTAO_ATAQUE_SETUP = player_config[1,6];
player2.BOTAO_ATAQUE2_SETUP = player_config[1,7];








////////////////////////////////////////////




}


//
}

