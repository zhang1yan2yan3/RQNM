clear,clc
global n
global m
Loop=200;
h=1;
j=1;
j1=1;
Rloopk=zeros(Loop,h);
Rloopnf=zeros(Loop,h);
Rloopng=zeros(Loop,h);
Rloopt=zeros(Loop,h);
Rloopnhev=zeros(Loop,h);
Rloopnv=zeros(Loop,h);
Rloopchu=zeros(Loop,h);
for d=1:1
    for iLoop=1:Loop
        %%  Initialization
        tic;
        DTK=1;
        k=1;
        nf=1;
        ng=1;
        nhev=1;
        nv=1;
        yita1=0.1;
        yita2=0.9;
        rho_1=0.1;
        rho_2=0.6;
        epsilon = 2.22e-16;
        S1=chushi1(d);
        BP1 = struct2cell(S1);
        Mymat1 = cell2mat(BP1);
        x0=Mymat1(1:n,iLoop);
        xk=Mymat1(1:n,iLoop);
        R=g(x0,d);
        r=zeros(1,m);
        for i=1:m
            r(i)=1/max(1,norm(R(i,1:n),inf));
        end
        r1=repmat(r',1,n);
        r2=zeros(n*m,1);
        for i=1:m
            r2(n*(i-1)+1:n*i,1)=r(i);
        end
        %% LOOP
        while 1
            %% solve subproblem
            G=g(xk,d).*r1;
            ng=ng+1;
            B=r2.*hf(xk,d);
            nhev=nhev+1;
            xx=ones(n+1,1)+1;
            fun = @(x)x(n+1);
            A=zeros(m,n+1);
            A(1:m,1:n)=G;
            A(1:m,n+1)=-ones(m,1);
            b=zeros(m,1);
            nonlcon=@(x)circlecon4(x,G,B,m,n,DTK);
            options = optimoptions('fmincon','Display','iter','Algorithm','sqp');%,'Algorithm','sqp'
            [dd,fval,exitflag,output,lambda] = fmincon(fun,xx,A,b,[],[],[],[],nonlcon,options);
             disp(d)
            nv=nv+1;
            dk=dd(1:n);
            thetak=fval;
            if abs(thetak)<=5*sqrt(epsilon)
                break
            end
            %% compute rho_k
            F=r'.*f(xk,d);
            nf=nf+1;
            x1=xk+dk;
            F1=r'.*f(x1,d);
            nf=nf+1;
            rho_k=zeros(m,1);
            for i=1:m
                qk=G(i,1:n)*dk+(1/2)*dk'*(B(n*(i-1)+1:n*i,1:n))*dk;
                rho_k(i)=(F(i)-F1(i))/(0-qk);
            end
            %% step4
            if rho_k>=yita1*ones(m,1)
                x1=xk+dk;
            else
                x1=xk;
            end
            %% update DTK
            if rho_k>=yita2*ones(m,1)
                DTK1=DTK+(10^10-DTK)*rand(1);
            end
            
            if rho_k>=yita1*ones(m,1)
                for i=1:m
                    if rho_k(i)<yita2
                       DTK1=rho_2*DTK+(DTK-rho_2*DTK)*rand(1);
                        break
                    end
                end
            end
            
            for i=1:m
                if rho_k(i)<=yita1
                    DTK1=rho_1*DTK+(rho_2*DTK-rho_1*DTK)*rand(1);
                    break
                end
            end
            
            if  k>=1000
                nhev=nan;
                k=nan;
                nf=nan;
                ng=nan;
                nv=nan;
                break
            end
            k=k+1;
            xk=x1;
            DTK=DTK1;
        end
        t=toc;
        FF1=f(xk,d)';
        Rloopk(iLoop,j)=k;
        Rloopnf(iLoop,j)=nf;
        Rloopng(iLoop,j)=ng;
        Rloopt(iLoop,j)=t;
        Rloopnhev(iLoop,j)=nhev;
        Rloopnv(iLoop,j)=nv;
        Rloopchu(iLoop,j1:j1+m-1)=FF1;
    end
    j=j+1;
    j1=j1+m;
end
