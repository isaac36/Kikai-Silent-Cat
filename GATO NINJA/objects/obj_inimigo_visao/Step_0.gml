/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(instance_exists(dono)){


if(a=0){
tempo=(obj_gato.x-x)/velx;
velocidadeY = (target-y)/tempo;






velocidadeY=abs(velocidadeY);
if(velocidadeY>3){velocidadeY=3}
if(target<y){velocidadeY=-velocidadeY;}
//FINALIAR
a++;
//
}
	/*
image_alpha = image_alpha + velaplha;
if(image_alpha==1)or(image_alpha==0){velaplha*=-1;}
*/

lado = dono.lado;


if(lado=="esquerda"){

image_xscale = -1;

}

if(lado=="direita"){

image_xscale = 1;

}

if(instance_exists(obj_gato)){vargato=instance_nearest(x,y,obj_gato)}else{vargato=-1}

if(vargato!=-1){
if(place_meeting(x,y,vargato))and(vargato.estado!=gato_escondido)and(dono.estado!="luta"){dono.estado=inimigo_HEY;dono.modo="luta";};
}



/*
if(target>y)y=y+3;
if(target<y)y=y-3;
*/
y=y+velocidadeY;
x=x+(velx*dir);




if(dono.modo!="patrulha"){instance_destroy()}
if(distance_to_object(dono)>300){instance_destroy();}
}
else{instance_destroy()}

if(place_meeting(x,y,obj_wall)){instance_destroy()}

