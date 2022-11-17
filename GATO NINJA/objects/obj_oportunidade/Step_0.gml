/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x=dono.x;
y=dono.y;

if(dono.patrulhadir==-1){image_xscale=-1*(abs(image_xscale));}
if(dono.patrulhadir==1){image_xscale=abs(image_xscale);}



if(place_meeting(x,y,obj_gato))obj_gato.distanciaExecucao = distanciaExecucao;
if(dono.modo!="patrulha"){instance_destroy();}

if(tempo!=false){

tempo--;
if(tempo<=0){instance_destroy();

}
}