hold on;
hold all;
x = [-1 0 1 0 0];
y=[3 4 3 2 0];
t = [0 0 0 1 2 3 3 3];
algo_de_boor(x,y,3,t); %degré 2
plot(x,y);
hold all;
x=[0 1 -1 -2 1];
y=[2 2 1 -1 -1];
plot(x,y);
algo_de_boor(x,y,3,[0 0 0 1 2 3 3 3]) ;%degré 2

%on remarque les deux courbes sont tangentes aux morceaux de courbes initiaux des points de controles. 
%donc elle passe par le premier point et le dernier point.





%aussi, la courbe est tangente aux courbes des points de controles en leurs milieux sauf aux morceaux de courbes initiaux. 

%il n'y a pas de discontinuité.