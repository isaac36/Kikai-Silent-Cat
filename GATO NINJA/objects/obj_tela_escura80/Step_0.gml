/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

x=dono.x;
y=dono.y;

if(dono.distanciaDoAlvo!=999999)and(dono.alvo!=-1)and(dono.alvo.alarm[11]==-1){
/*
image_alpha = (1 - dono.distanciaDoAlvo/200);



if(image_alpha<0){image_alpha=0;}
*/

valor = (1 - ((dono.distanciaDoAlvo-(dono.alvo.targeto.distanciaExecucao/2))/200));

if(dono.distanciaDoAlvo-(dono.alvo.targeto.distanciaExecucao/2)) < 0 {valor=1};

image_alpha = valor*0.90;

}else{
	
image_alpha=image_alpha-0.025;
	
	};

