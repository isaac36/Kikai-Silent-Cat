/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

movimento_pendular = movimento_pendular + velocidade_pendular;

if(movimento_pendular>10){velocidade_pendular-=0.05};
if(movimento_pendular<-10){velocidade_pendular+=0.05};


if(velocidade_pendular>1){velocidade_pendular=5}
if(velocidade_pendular<-1){velocidade_pendular=-5}




image_blend = make_color_hsv(cor, 175,100+(movimento_pendular*1) );

gpu_set_blendmode(bm_add);
draw_self();
gpu_set_blendmode(bm_normal);


