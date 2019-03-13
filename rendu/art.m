function res = art(Xpoints,Ypoints,k,t,valeurX)
  n = length(Xpoints);
  m = k-1;
  X = zeros(n,n); 
  Y = zeros(n,n);
  X(:,1)=Xpoints;
  Y(:,1)=Ypoints;
  for i=(k+1:n+1)
    if(valeurX<=t(i))
      r = i-1;
      break;
    end
  end
  for j=(2:k)
    for i=(r-k+(j-1)+1:r)
        alpha = (valeurX-t(i)) / (t((i)+k-(j-1))-t(i));
        X(i,j) = (1-alpha)*X(i-1,j-1)+alpha*X(i,j-1);
        Y(i,j) = (1-alpha)*Y(i-1,j-1)+alpha*Y(i,j-1);
    end
  end
  res(1) = X(r,k);
  res(2) = Y(r,k);
  
end