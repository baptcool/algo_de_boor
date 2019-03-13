
function [] = e(x,y,k,t)
  
  hold on;
  m=k-1;
  Ix = (t(k):0.01:t(length(x)+1));%intervalle de def de notre croube b_spline
 
 for i=(1:length(Ix))
    v = art(x,y,k,t,Ix(i)); %calcule de point
    X1(i) = v(1);
    X2(i) = v(2);
 endfor
 hold all;
   plot(X1,X2,'r');
  
endfunction