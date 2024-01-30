/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//draw_self();


 
frequencia_desenho = frequencia_desenho+1;
if(frequencia_desenho>10){frequencia_desenho=0}

if(cor<tendencia){cor=cor+2}
if(cor>tendencia){cor=cor-2}

if(cor>255){cor=255}
if(cor<0){cor=0}
	
	
if(frequencia_balanco)==0{velocidade_balanco=0.5}
if(frequencia_balanco)==10{velocidade_balanco=-0.5}

frequencia_balanco = frequencia_balanco +velocidade_balanco;
	
if(pode_abrir==true){
draw_sprite_ext(spr_seta,floor(frequencia_desenho/5),x,y-120-(frequencia_balanco),1,1,0,make_color_rgb(255,cor,cor),0.7);
tendencia = 255;
}else{

draw_sprite_ext(spr_seta,floor(frequencia_desenho/5),x,y-120-(frequencia_balanco),1,1,0,make_color_rgb(255,cor,cor),0.7);

tendencia = 0; 

}

 