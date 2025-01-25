clear,clc
S11=load('RINV-K6.mat');BP11 = struct2cell(S11);Mymat11 = cell2mat(BP11);
S15=load('RINV-T6.mat');BP15 = struct2cell(S15);Mymat15 = cell2mat(BP15);

S21=load('TR-K1.mat');BP21 = struct2cell(S21);Mymat21 = cell2mat(BP21);
S25=load('TR-T1.mat');BP25 = struct2cell(S25);Mymat25 = cell2mat(BP25);

S31=load('SD-K2.mat');BP31 = struct2cell(S31);Mymat31 = cell2mat(BP31);
S35=load('SD-T2.mat');BP35 = struct2cell(S35);Mymat35 = cell2mat(BP35);

S41=load('NEWTON2-K.mat');BP41 = struct2cell(S41);Mymat41 = cell2mat(BP41);
S45=load('NEWTON2-T.mat');BP45 = struct2cell(S45);Mymat45 = cell2mat(BP45);

for qq=1:2
    if  qq==1
        K1=[];K2=[];K3=[];K4=[];
        for d=1:76
            K1=[K1;Mymat11(:,d)];
            K2=[K2;Mymat21(:,d)];
            K3=[K3;Mymat31(:,d)];
            K4=[K4;Mymat41(:,d)];
        end
        K1(find(isnan(K1)))=1000;
        K2(find(isnan(K2)))=1000;
        K3(find(isnan(K3)))=1000;
        K4(find(isnan(K4)))=1000;
        nfsum=[K1 K2 K3 K4];
        iter=nfsum;
        [m,n]=size(iter);
        ndd=m;
        for i=1:ndd
            mi=inf;
            for j=1:n
                if iter(i,j)~=0 && iter(i,j)<mi
                    mi=iter(i,j);
                end
            end
            for j=1:n
                iter(i,j)=iter(i,j)/mi;
            end
        end
        iterinum=[];
        for i=1:n
            a=unique(iter(:,i));
            na=length(a);
            iterinum=[iterinum,na];
        end
        tmax=max(iterinum);
        tx=ones(n,tmax);
        ty=ones(n,tmax);
        for i=1:n
            a=unique(iter(:,i));
            na=length(a);
            e=zeros(1,na-1);
            for k=2:na
                for j=1:ndd
                    if iter(j,i) <= a(k)
                        e(k-1)=e(k-1)+1;
                    end
                end
            end
            e=e./ndd;
            [me,ne]=size(e);
            tx(i,:)=max(a(2:na))*tx(i,:);
            ty(i,:)=max(e)*ty(i,:);
            tx(i,1:na-1)=a(2:na);
            ty(i,1:ne)=e;
        end
        figure(1)
        plot(tx(1,:),ty(1,:),'-','Color',[0.7412 0.1176 0.1176],'linewidth',1.7)
        hold on
        plot(tx(2,:),ty(2,:),'-.','Color',[1 0.6667 0.1961],'linewidth',1.7)
        hold on
        plot(tx(3,:),ty(3,:),':','Color',[0.1882 0.5922 0.6431],'linewidth',1.7)
        hold on
        plot(tx(4,:),ty(4,:),'--','Color',[0.0196 0.3137 0.3569],'linewidth',1.7)
        hold on
        axis([1 15 0 1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        %title('(I) Iterations','fontname','Times New Roman','Color','k','FontSize',13)
        title('(I) Iterations','fontname','Times New Roman','Color','k','FontSize',13)
        legend('Regularized quasi-Newton','Trust region','Steepest descent','Newton with safeguards','location','southeast')
        
    elseif  qq==2
        K1=[];K2=[];K3=[];K4=[];
        for d=1:76
            K1=[K1;Mymat15(:,d)];
            K2=[K2;Mymat25(:,d)];
            K3=[K3;Mymat35(:,d)];
            K4=[K4;Mymat45(:,d)];
        end
        K1(find(isnan(K1)))=1000;
        K2(find(isnan(K2)))=1000;
        K3(find(isnan(K3)))=1000;
        K4(find(isnan(K4)))=1000;
        nfsum=[K1 K2 K3 K4];
        iter=nfsum;
        [m,n]=size(iter);
        ndd=m;
        for i=1:ndd
            mi=inf;
            for j=1:n
                if iter(i,j)~=0 && iter(i,j)<mi
                    mi=iter(i,j);
                end
            end
            for j=1:n
                iter(i,j)=iter(i,j)/mi;
            end
        end
        iterinum=[];
        for i=1:n
            a=unique(iter(:,i));
            na=length(a);
            iterinum=[iterinum,na];
        end
        tmax=max(iterinum);
        tx=ones(n,tmax);
        ty=ones(n,tmax);
        for i=1:n
            a=unique(iter(:,i));
            na=length(a);
            e=zeros(1,na-1);
            for k=2:na
                for j=1:ndd
                    if iter(j,i) <= a(k)
                        e(k-1)=e(k-1)+1;
                    end
                end
            end
            e=e./ndd;
            [me,ne]=size(e);
            tx(i,:)=max(a(2:na))*tx(i,:);
            ty(i,:)=max(e)*ty(i,:);
            tx(i,1:na-1)=a(2:na);
            ty(i,1:ne)=e;
        end
        figure(2)
        plot(tx(1,:),ty(1,:),'-','Color',[0.7412 0.1176 0.1176],'linewidth',1.7)
        hold on
        plot(tx(2,:),ty(2,:),'-.','Color',[1 0.6667 0.1961],'linewidth',1.7)
        hold on
        plot(tx(3,:),ty(3,:),':','Color',[0.1882 0.5922 0.6431],'linewidth',1.7)
        hold on
        plot(tx(4,:),ty(4,:),'--','Color',[0.0196 0.3137 0.3569],'linewidth',1.7)
        hold on
        axis([1 15 0 1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        title('(II) CPU time','fontname','Times New Roman','Color','k','FontSize',13)
        legend('Regularized quasi-Newton','Trust region','Steepest descent','Newton with safeguards','location','southeast')
    end
end



