/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
pode_atender=true;

//COLOCAR NA ROOM ASSIM:
/*

comeco = 0;
fim = 2;
fala[0]="Meu fi para de inventar estado aí";
face[0]=spr_gato;
lado[0]=1;
animacao[0] = cena1;//false se nao tem
 
*/




movimento_pendular = 0;
velocidade_pendular = 1;

fala[0]="Meu fi para de inventar estado aí";
fala[1]="Nao, ai dento";
fala[2]="HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA HA ";

face[0]=spr_gato;
face[1]=spr_tijolao;
face[2]=spr_tijolao;

lado[0]=1;
lado[1]=-1;
lado[2]=-1;

//ANIMACAO SEMPRE TEM QUE TER 1 A MAIS
animacao[0] = false;
animacao[1] = false;
animacao[2] = false;
animacao[3] = false;
animacao[4] = false;
animacao[5] = false;
animacao[6] = false;
animacao[7] = false;
animacao[8] = false;
animacao[9] = false;
animacao[10] = false;
animacao[11] = false;
animacao[12] = false;//A mais


//TEXTO,PERSONAGEM,LADO,SCRIPT

comecou = false;
comeco = 0;
fim = 2;
cont_dialogo=0;
cont_cena=0;
prox_cena=false;



if(animacao[cont_dialogo]==false){pode_passar=true}else{pode_passar=false}