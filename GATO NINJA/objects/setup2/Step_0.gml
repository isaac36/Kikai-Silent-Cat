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

if(cursor=="SETUP"){cursor=1;}else
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

if(cursor=="SETUP")and(player.BOTAO_ATAQUE){audio_stop_all();room_goto(room_controles)};



//
}


//ESCOLHEU

if(room==room_selecao)and(escolheu==true){

if(player.BOTAO_PULO){


if(setup1.transicao==false)escolheu=false;




};

}

