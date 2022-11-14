draw_self();
if(estado==dash){image_alpha=0.70}else{image_alpha=1;}

image_blend=croma;


if(!global.setinhas){
	
draw_text(x-50,y-120,"estado: "+string(estado));

draw_text(x-50,y-100,"velocidadeX: "+string(velocidadeX));
draw_text(x-50,y-80,"velocidadeY: "+string(velocidadeY));

draw_text(x-50,y-60,"x: "+string(x));
draw_text(x-50,y-40,"y: "+string(y));


}