%%  向量优化的Armijo线搜索
function  [alphak,nf,ng]=armijo31_d(xk,dk,nf,ng,Ck,r1,r,m,d)
delta=1e-4;
alphak=1;
alphakmin=1e-15;
w1=0.05;
w2=0.95;
G1=g(xk,d).*r1;
ng=ng+1;
while 1
    F2=r'.*f(xk+alphak*dk,d);
    nf=nf+1;
    if alphak<=alphakmin
        alphak=alphakmin;
        break
    end
    a=0;
    for i=1:m
        if F2(i)-Ck(i)-delta*alphak*max(G1*dk)>0
            ng=ng+1;
            ind=i;
            break
        else
            a=a+1;
        end
    end
    if a==m
        break
    end
    while 1
        F2=r'.*f(xk+alphak*dk,d);
        nf=nf+1;
        if F2(ind)-Ck(ind)-delta*alphak*max(G1*dk)<=0
%         if F2(ind)-Ck(ind)-delta*alphak*thetak<=0
        end
        alphakk=((G1(ind)/((Ck(ind)-F2(ind))/alphak + G1(ind) ))/2)*alphak;
        if alphakk>=w1*alphak && alphakk<=w2*alphak
            alphak=alphakk;
        else
            alphak=alphak/2;
        end
        if alphak<=alphakmin
            alphak=alphakmin;
            break
        end
    end
end