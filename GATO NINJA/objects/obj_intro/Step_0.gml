/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x=320;
y=180;

if(keyboard_check_pressed(vk_anykey)){room_goto(Menu)};

movimento_pendular = movimento_pendular + velocidade_pendular;

if(movimento_pendular==0)and(velocidade_pendular<0)and(i<5){i++;}

if(movimento_pendular>10){velocidade_pendular-=0.02};
if(movimento_pendular<0){velocidade_pendular+=0.02};


if(velocidade_pendular>1){velocidade_pendular=1}
if(velocidade_pendular<-1){velocidade_pendular=-1}

if(i==5)and(movimento_pendular==0){room_goto(Menu);setupGATO.cursorMenu=0;};



