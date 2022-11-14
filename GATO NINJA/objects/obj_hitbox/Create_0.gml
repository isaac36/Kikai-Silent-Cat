randomize();

target_padrao = obj_inimigo;
target=-1;
tempo = 4;
player = 0;
lado = 0;
tempoinicial = tempo;
bateu=0;
descer=false;
velxReal=false;
velocidadeRotacao=0;


estado=solado;


velx=0;
vely=0;
veldir=0;

VX=0;
VY=0;

posX=0;
posY=0;

soladotempo = 15;

if(lado=="esquerda"){image_xscale=-1}

alturaEfeito = 0;

vetorfraco[0] = obj_hit4_fx;
vetorfraco[1] = obj_hit5_fx;
vetorfraco[2] = obj_hit6_fx;
efeitofraco = vetorfraco[irandom_range(0,2)];

vetorforte[0] = obj_hit_fx;
vetorforte[1] = obj_hit2_fx;
vetorforte[2] = obj_hit3_fx;
efeitoforte = vetorforte[irandom_range(0,2)];

vetorCorte[0] = obj_hit_corte1_fx;
vetorCorte[1] = obj_hit_corte1_fx;
vetorCorte[2] = obj_hit_corte1_fx;
efeitoCorte = vetorCorte[irandom_range(0,2)];


vetorSangue[0] = obj_sangue1_fx;
vetorSangue[1] = obj_sangue3_fx;
vetorSangue[2] = obj_sangue1_fx;
efeitoSangue = vetorSangue[irandom_range(0,1)];
sangue=false;


//Som
vetorSom[0] = sfx_inimigo_hitado1;
vetorSom[1] = sfx_inimigo_hitado2;
somHit= vetorSom[irandom_range(0,1)];

somHit=vetorSom[0];//USANDO SO UM SOM







efeitoAngulo = false;
efeito = efeitofraco;
telavermelha = false;
vida=0;