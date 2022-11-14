

x= (player1.x + player2.x)/2;
y= ((player1.y + player2.y)/2 );

distancia=max(point_distance(player1.x,player1.y,player2.x,player2.y));
//distance_to_object(obj_curupira);
if(distancia<=120){
distancia =120;}
else{
distancia=max(point_distance(player1.x,player1.y,player2.x,player2.y));}
a=0.5*distancia;
b=0.2*distancia;

if(a>640){
a = 640;}
else{
a=0.5*distancia;}
if(b>360){
b=360;}
else{
b=0.2*distancia;}

__view_set( e__VW.WView, 0, 640+a );
__view_set( e__VW.HView, 0, 360+b );


//2.6 1.5


