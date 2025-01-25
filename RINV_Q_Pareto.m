clear,clc
%% Read data  利用对偶求解，保证正定循环，不含不成功步，利用内循环和BFGS更新
global m
global n
Loop=300;
h=1;
jj=1;
j1=1;
pmin=1e-4;
c1=0.1;
c2=0.9;
sigma1=0.1;
sigma2=2;
eps=2.22e-16;
Rloopk=zeros(Loop,h);
Rloopnf=zeros(Loop,h);
Rloopng=zeros(Loop,h);
Rloopt=zeros(Loop,h);
Rloopnhev=zeros(Loop,h);
Rloopnv=zeros(Loop,h);
Rloopchu=zeros(Loop,h); 
for d=35
    for iLoop=1:Loop
        tic;
        nv=1; 
        nhev=1; 
        k=1;
        nf=1;
        ng=1;
        muk=0.0001;
        a=0;
        S1=chushi1(d);
        s1 = load('ATOI4.mat')
        BP1 = struct2cell(s1);
        Mymat1 = cell2mat(BP1);
        xk=Mymat1(1:n,iLoop);
        F0=f(xk,d); 
        R=g(xk,d);
        ng=ng+1;
        r=zeros(1,m);
        for i=1:m
            r(i)=1/max(1,norm(R(i,1:n),inf));
        end
        r1=repmat(r',1,n);
        BK=eye(n);
        I=eye(n);
        F=r'.*f(xk,d);
        nf=nf+1;
        G=g(xk,d).*r1;
        ng=ng+1;
        while 1
            while 1
                AK=BK+muk*I;
                e=eig(AK);
                if all(e>0)
                    break
                else
                    muk=sigma2*muk;
                    nhev=nhev+1;
                end
            end
            while 1
                AK=BK+muk*I;
                AK1=inv(AK);
                H1=G*AK1*G';
                H=(H1+H1')/2;
                A=ones(1,m);
                b=1;
                l=zeros(m,1);
                u=ones(m,1);
                ff=zeros(m,1);
                [lammda,fval]= quadprog(H,ff,[],[],A,b,l,u);
                nv=nv+1;
                disp(d)
                dk=-AK1*G'*lammda;
                thetak=-fval;
                if abs(thetak)<=5*sqrt(eps)
                    a=1;
                    break
                end
                predk=-thetak;  
                if predk>pmin*norm(G'*lammda)*norm(dk)
                    a=2;
                else
                    muk=sigma2*muk;
                end
                if a==2
                    x1=xk+dk;
                    F1=r'.*f(x1,d);
                    nf=nf+1;
                    aredk=max(F-F1);
                    rhok=aredk/predk;
                    if rhok<=c1
                        muk=sigma2*muk;
                    else
                        break
                    end
                end
            end
            if a==1
                break
            end
            if rhok>c1&&rhok<=c2
                muk1=muk;
            else
                muk1=sigma1*muk;
            end
            F11=f(x1,d);
            G1=g(x1,d).*r1;
            ng=ng+1;
            yk=G1'-G';
            rk=yk*lammda;
            BK1=BK-(BK*dk*dk'*BK)/(dk'*BK*dk)+(rk*rk')/(dk'*rk);
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
            F=F1;
            G=G1;
            muk=muk1;
            BK=BK1;
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
        
        plot(F0(1,1),F0(2,1),'Ok',F11(1,1),F11(2,1),'r*','MarkerSize',4);
        plot([F0(1,1),F11(1,1)],[F0(2,1),F11(2,1)],'k');
        %axis([0 1 0 40])
        xlabel({'$f_1(x)$'},'Interpreter','latex')
        ylabel({'$f_2(x)$'},'Interpreter','latex')
        title('Toi4','fontname','Times New Roman','Color','k','FontSize',18)
        pause(0.1);
        hold on;      
%                 plot3(F0(1,1),F0(2,1),F0(3,1),'Ok',F11(1,1),F11(2,1),F11(3,1),'r*','MarkerSize',4);
%                 plot3([F0(1,1),F11(1,1)],[F0(2,1),F11(2,1)],[F0(3,1),F11(3,1)],'k');
%                 %axis([0 1 0 40])
%                 xlabel({'$f_1(x)$'},'Interpreter','latex')
%                 ylabel({'$f_2(x)$'},'Interpreter','latex')
%                 zlabel({'$f_3(x)$'},'Interpreter','latex')
%                 title('VFM1','fontname','Times New Roman','Color','k','FontSize',18)
%                 pause(0.1);
%                 hold on;
    end
    jj=jj+1;
    j1=j1+m;
end
     
