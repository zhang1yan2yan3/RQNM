function [c,ceq] = circlecon4(x,G,B,m,n,DTK)
c=[];
for i=1:m
     BB=G(i,1:n)*x(1:n)+(1/2)*x(1:n)'*(B(n*(i-1)+1:n*i,1:n))*x(1:n)-x(n+1);
     c=[c;BB];
end
 aa=norm(x(1:n))-DTK;
 c=[c;aa];
 ceq = [];
end