/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x=dono.x;
y=dono.y;

if(dono.patrulhadir==-1){image_xscale=-1;}
if(dono.patrulhadir==1){image_xscale=1;}



if(place_meeting(x,y,obj_gato))obj_gato.distanciaExecucao = distanciaExecucao;
if(dono.modo!="patrulha"){instance_destroy();}