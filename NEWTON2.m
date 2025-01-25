clear,clc
%% 璇诲彇鏁版嵁
global m
global n
Loop=200;
h=1;
j1=1;
jj=1;
Rloopk=zeros(Loop,h);
Rloopnf=zeros(Loop,h);
Rloopng=zeros(Loop,h);
Rloopt=zeros(Loop,h);
Rloopnhev=zeros(Loop,h);
Rloopnv=zeros(Loop,h);
Rloopchu=zeros(Loop,h);
for d=33
    for iLoop=1:Loop
        tic;
        a=0;
        nv=1;%子问题求解次数
        nhev=1;%Hessian矩阵计算次数
        k=1;
        nf=1;
        ng=1;
        gamma1=1e-6;
        gamma2=0.1;
        yita=0.85;
        qk=1;
        multmu=2;
        epsilon = 2.22e-16;
        S1=chushi1(d);
        BP1 = struct2cell(S1);
        Mymat1 = cell2mat(BP1);
        x0=Mymat1(1:n,iLoop);
        xk=Mymat1(1:n,iLoop);
        R=g(x0,d);
        r=[];
        for i=1:m
            r1=1/max(1,norm(R(i,1:n),inf));
            r=[r,r1];
        end
        r1=repmat(r',1,n);
        F=r'.*f(xk,d);
        nf=nf+1;
        Ck=F;
        r2=zeros(n*m,1);
        for i=1:m
            r2(n*(i-1)+1:n*i,1)=r(i);
        end
        %% 澶氱洰鏍囪繃绋?
        while 1
            a1=r2.*hf(xk,d);
            B=zeros(n*m,n);
            for i=1:m
                ai=a1(n*(i-1)+1:n*i,1:n);
                [R,flag]=chol(ai);
                if flag==0
                    B(n*(i-1)+1:n*i,1:n)=ai;
                    nhev=nhev+1;
                else
                    Aii=min(diag(ai));
                    if Aii<=0
                        mu=-Aii+1;
                    else
                        mu=0;
                    end
                    while 1
                        B1=ai+eye(n)*mu;
                        nhev=nhev+1;
                        [R,flag]=chol(B1);
                        if flag~=0
                            mu=max(multmu*mu,1);
                        else
                            B(n*(i-1)+1:n*i,1:n)=B1;
                            break
                        end
                    end
                end
            end
            %% 璁＄畻sitak,dN,lamtaN
            mu=0;
            GG=g(xk,d);
            ng=ng+1;
            G=GG.*r1;
            while 1
                xx=ones(n+1,1)+1;
                fun = @(x)x(n+1);
                nonlcon=@(x)circlecon(x,G,B,m,n);
                options = optimoptions('fmincon','Display','iter','Algorithm','sqp');%,'Algorithm','sqp'
                [dd,fval,exitflag,output,lambda] = fmincon(fun,xx,[],[],[],[],[],[],nonlcon,options);
                lammda=lambda.ineqnonlin;
                 disp(d)
                dNG=dd(1:n);
                nv=nv+1;
                dlammda=0;
                for i=1:m
                    dlammda=dlammda+lammda(i)*(G(i,1:n))';
                end
                sitak=fval;
                if abs(sitak)<=5*sqrt(epsilon)
                    a=1;
                    break
                end
                if max(G*dNG)<=-gamma1*norm(dlammda)*norm(dNG) %淇濇姢绛栫暐1
                    break
                else
                    mu=max(multmu*mu,1);
                    e1=[];
                    for i=1:m
                        e2=mu*eye(n);
                        e1=[e1;e2];
                    end
                    B=B+e1;
                    nhev=nhev+1;
                end
            end
            if a==1
                break
            end
            if norm(dNG)<gamma2*norm(dlammda)
                dNG=gamma2*(norm(dlammda)/norm(dNG))*dNG;
            end
            %% armijo 鎼滅储
            [alphak,nf,ng]=armijo31_d(xk,dNG,nf,ng,Ck,r1,r,m,d);
            x1=xk+alphak*dNG;
            F1=r'.*f(x1,d);
            nf=nf+1;
            %% 鏇存柊qk,Ck
            qk1=yita*qk+1;
            Ck1=(yita*qk/qk1)*Ck+(1/qk1)*F1;
            if  k>=1000
                nhev=nan;
                nv=nan;
                k=nan;
                nf=nan;
                ng=nan;
                break
            end
            k=k+1;
            xk=x1;
            qk=qk1;
            Ck=Ck1;
        end
        t=toc;
        FF1=f(xk,d)';
        Rloopk(iLoop,jj)=k;
        Rloopnf(iLoop,jj)=nf;
        Rloopng(iLoop,jj)=ng;
        Rloopt(iLoop,jj)=t;
        Rloopnhev(iLoop,jj)=nhev;
        Rloopnv(iLoop,jj)=nv;
        Rloopchu(iLoop,j1:j1+m-1)=FF1;
    end
    jj=jj+1;
    j1=j1+m;
end
