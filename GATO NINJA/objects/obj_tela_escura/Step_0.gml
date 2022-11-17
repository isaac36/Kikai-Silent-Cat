/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(!instance_exists(obj_gato)){instance_destroy()}else{
dono=instance_nearest(x,y,obj_gato);

x=dono.x;
y=dono.y;

if(dono.distanciaDoAlvo!=999999)and(dono.alvo!=-1)and(dono.alvo.alarm[11]==-1){

image_alpha = image_alpha+0.02;


if(instance_exists(dono.alvo.targeto)){
valor = (1 - ((dono.distanciaDoAlvo-(dono.alvo.targeto.distanciaExecucao/2))/150));



if(dono.distanciaDoAlvo-(dono.alvo.targeto.distanciaExecucao/2)) < 0 {valor=1};


if(image_alpha>=valor*0.9){image_alpha=valor*0.9;};
}
}else{
	
image_alpha=image_alpha-0.025;
	
if(image_alpha<=0){image_alpha=0;}
	};
	
	
}

