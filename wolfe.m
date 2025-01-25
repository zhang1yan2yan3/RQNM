function [ alpha] = wolfe(x,d,gd,alpha)
rho=1e-4;
sigma=0.8;
a = 0;
b = Inf;
while (1)
    x1=x+alpha*d;
    if ~(fun(x1)<=fun(x)+rho*alpha*gd)
        b = alpha;
        alpha = (alpha+a)/2;
        continue;
    end
    if ~(gun(x1)'*d>= sigma*gd)
        a = alpha;
        alpha = min([2*alpha, (b+alpha)/2]);
        continue;
    end
    break;
end
% newxk = xk+alpha*dk;
% newfk = fun(newxk);



