%% solve1
clc
clear
h=1;
j1=1;
s1=1;
s=4;
TT1=zeros(200,h);
TT2=zeros(200,h);
T3=zeros(400,h);
SS1=zeros(h,1);
SS2=zeros(h,1);
%FH1=NaN*ones(100,m*h);
%FH2=NaN*ones(100,m*h);
Rloopps=zeros(h,s);
data=zeros(h,s);
for d=1:76
    m=mubiao2(d);
    %%
    S11=load('RINV-F6.mat');BP11 = struct2cell(S11);F1= cell2mat(BP11);
    %front = 1;2
    %FF1(front).f1 = [];
    T1=zeros(200,1);
    P1=[];
    individual1 = [];
    for i = 1:200
        individual1(i).n1 = 0;
        individual1(i).p1 = [];
        for j = 1:200
            less1 = 0;
            equal1 = 0;
            more1 = 0;
            for k = j1:j1+m-1
                if F1(i,k) < F1(j,k)
                    less1 = less1+1;
                elseif F1(i,k) == F1(j,k)
                    equal1= equal1+1;
                else
                    more1 = more1 + 1;
                end
            end
            if less1 == 0 && equal1 ~= m
                individual1(i).n1 = individual1(i).n1 + 1;
            elseif more1 == 0 && equal1 ~= m
                individual1(i).p1 = [individual1(i).p1 j];
            end
        end
        if individual1(i).n1 == 0
            %pop_eva(i,target+dimension+1) = 1;
            % FF1(front).f1 = [FF1(front).f1 i];
            T1(i)=1;
            TT1(i,d)=i;
            P1=[P1;F1(i,j1:j1+m-1)];
            % FH1(i,m*d-(m-1):m*d)=F1(i,m*d-(m-1):m*d);
        end
    end
    z1=sum(T1); %compute PF_ps,s=1
    
    %% solve2
    S12=load('TR-F1.mat');BP12 = struct2cell(S12);F2=cell2mat(BP12);
    %front = 1;
    %FF2(front).f2 = [];
    P2=[];
    T2=zeros(200,1);
    individual2 = [];
    for i = 1:200
        individual2(i).n2 = 0;
        individual2(i).p2 = [];
        for j = 1:200
            less2 = 0;
            equal2 = 0;
            more2 = 0;
            for k = j1:j1+m-1
                if F2(i,k) < F2(j,k)
                    less2 = less2+1;
                elseif F2(i,k) == F2(j,k)
                    equal2 = equal2+1;
                else
                    more2 = more2 + 1;
                end
            end
            if less2 == 0 && equal2 ~= m
                individual2(i).n2 = individual2(i).n2 + 1;
            elseif more2 == 0 && equal2 ~= m
                individual2(i).p2 = [individual2(i).p2 j];
            end
        end
        if individual2(i).n2 == 0
            %pop_eva(i,target+dimension+1) = 1;
            %FF2(front).f2 = [FF2(front).f2 i];
            T2(i)=1;
            TT2(i,d)=i;
            P2=[P2;F2(i,j1:j1+m-1)];
            %FH2(i,m*d-(m-1):m*d)=F1(i,m*d-(m-1):m*d);
        end
    end
    z2=sum(T2); %compute PF_ps,s=2
    
    %% solve3
    S13=load('SD-F2.mat');BP13 = struct2cell(S13);F3=cell2mat(BP13);
    %front = 1;
    %FF1(front).f1 = [];
    T3=zeros(200,1);
    P3=[];
    individual3 = [];
    for i = 1:200
        individual3(i).n3 = 0;
        individual3(i).p3 = [];
        for j = 1:200
            less3 = 0;
            equal3 = 0;
            more3 = 0;
            for k = j1:j1+m-1
                if F3(i,k) < F3(j,k)
                    less3 = less3+1;
                elseif F3(i,k) == F3(j,k)
                    equal3= equal3+1;
                else
                    more3 = more3 + 1;
                end
            end
            if less3 == 0 && equal3 ~= m
                individual3(i).n3 = individual3(i).n3 + 1;
            elseif more3 == 0 && equal3 ~= m
                individual3(i).p3 = [individual3(i).p3 j];
            end
        end
        if individual3(i).n3 == 0
            %pop_eva(i,target+dimension+1) = 1;
            % FF1(front).f1 = [FF1(front).f1 i];
            T3(i)=1;
            TT3(i,d)=i;
            P3=[P3;F3(i,j1:j1+m-1)];
        end
    end
    z3=sum(T3); %compute PF_ps,s=1
    
    %% solve4
    S14=load('NEWTON2-F.mat');BP14 = struct2cell(S14);F4=cell2mat(BP14);
    %front = 1;
    %FF1(front).f1 = [];
    T4=zeros(200,1);
    P4=[];
    individual4 = [];
    for i = 1:200
        individual4(i).n4 = 0;
        individual4(i).p4 = [];
        for j = 1:200
            less4 = 0;
            equal4 = 0;
            more4 = 0;
            for k = j1:j1+m-1
                if F4(i,k) < F4(j,k)
                    less4 = less4+1;
                elseif F4(i,k) == F4(j,k)
                    equal4= equal4+1;
                else
                    more4 = more4 + 1;
                end
            end
            if less4 == 0 && equal4 ~= m
                individual4(i).n4 = individual4(i).n4 + 1;
            elseif more4 == 0 && equal4 ~= m
                individual4(i).p4 = [individual4(i).p4 j];
            end
        end
        if individual4(i).n4 == 0
            %pop_eva(i,target+dimension+1) = 1;
            % FF1(front).f1 = [FF1(front).f1 i];
            T4(i)=1;
            TT4(i,d)=i;
            P4=[P4;F4(i,j1:j1+m-1)];
        end
    end
    z4=sum(T4); %compute PF_ps,s=1
    
    % S15=load('RINV-F9.mat');BP15 = struct2cell(S15);F5=cell2mat(BP15);
    % %front = 1;
    % %FF1(front).f1 = [];
    % T5=zeros(200,1);
    % P5=[];
    % individual5 = [];
    % for i = 1:200
    %     individual5(i).n5 = 0;
    %     individual5(i).p5 = [];
    %     for j = 1:200
    %         less5 = 0;
    %         equal5 = 0;
    %            more5 = 0;
    %         for k = j1:j1+m-1
    %             if F5(i,k) < F5(j,k)
    %                 less5 = less5+1;
    %             elseif F5(i,k) == F5(j,k)
    %                 equal5= equal5+1;
    %             else
    %                 more5 = more5 + 1;
    %             end
    %         end
    %         if less5 == 0 && equal5 ~= m
    %             individual5(i).n5 = individual5(i).n5 + 1;
    %         elseif more5 == 0 && equal5 ~= m
    %             individual5(i).p5 = [individual5(i).p5 j];
    %         end
    %     end
    %     if individual5(i).n5 == 0
    %         %pop_eva(i,target+dimension+1) = 1;
    %        % FF1(front).f1 = [FF1(front).f1 i];
    %         T5(i)=1;
    %         TT5(i,d)=i;
    %         P5=[P5;F5(i,j1:j1+m-1)];
    %     end
    % end
    % z5=sum(T5); %compute PF_ps,s=1
    
    HH1=union(P1,P2,'rows');
    HH2=union(P3,P4,'rows');
    % HH3=union(HH2,P5,'rows');
    F6=union(HH1,HH2,'rows');
    % F6=union(HH3,HH1,'rows');
    [l,~]=size(F6);
    
    P6=[];
    individual6 = [];
    for i = 1:l
        individual6(i).n6 = 0;
        individual6(i).p6 = [];
        for j = 1:l
            less6 = 0;
            equal6 = 0;
            more6 = 0;
            for k = 1:m
                if F6(i,k) < F6(j,k)
                    less6 = less6+1;
                elseif F6(i,k) == F6(j,k)
                    equal6= equal6+1;
                else
                    more6 = more6 + 1;
                end
            end
            if less6 == 0 && equal6 ~= m
                individual6(i).n6 = individual6(i).n6 + 1;
            elseif more6 == 0 && equal6 ~= m
                individual6(i).p6 = [individual6(i).p6 j];
            end
        end
        if individual6(i).n6 == 0
            %pop_eva(i,target+dimension+1) = 1;
            % FF1(front).f1 = [FF1(front).f1 i];
            T6(i)=1;
            TT6(i,d)=i;
            P6=[P6;F6(i,1:m)];
        end
    end
    z6=sum(T6); %compute PF_ps,s=1
    
    
    x_01=[];
    x_N11=[];
    for i=1:m
        x_01=[x_01,min(P6(:,i))];
        x_N11=[x_N11,max(P6(:,i))];
    end
    
    FF1= sort(P1,'ascend');
    kk1=[];
    a11=[];
    d11=[];
    for j=1:m
        kk2=(FF1(1,j)-x_01(j));
        %kk2=0;
        b11=[];
        for i=1:z1-1
            a1=(FF1(i+1,j)-FF1(i,j));
            b11=[b11;a1];
            kk2=[kk2;a1];
        end
        c11=sum(b11)/(z1-1);
        a11=[a11;c11];
        g1=(x_N11(j)-FF1(z1,j));
        kk2=[kk2;g1];
        c1=max(kk2);
        kk1=[kk1;c1];
        d11=[d11;sum(abs(b11-c11))];
    end
    ka1=max(kk1);
    FF2= sort(P2,'ascend');
    kk2=[];
    a12=[];
    d12=[];
    for j=1:m
        kk3=(FF2(1,j)-x_01(j));
        % kk3=0;
        b12=[];
        for i=1:z2-1
            a2=(FF2(i+1,j)-FF2(i,j));
            b12=[b12;a2];
            kk3=[kk3;a2];
        end
        c12=sum(b12)/(z2-1);
        a12=[a12;c12];
        g2=(x_N11(j)-FF2(z2,j));
        kk3=[kk3;g2];
        c2=max(kk3);
        kk2=[kk2;c2];
        d12=[d12;sum(abs(b12-c12))];
    end
    ka2=max(kk2);
    
    FF3= sort(P3,'ascend');
    kk3=[];
    a13=[];
    d13=[];
    for j=1:m
        kk4=(FF3(1,j)-x_01(j));
        %kk4=0;
        b13=[];
        for i=1:z3-1
            a3=(FF3(i+1,j)-FF3(i,j));
            b13=[b13;a3];
            kk4=[kk4;a3];
        end
        c13=sum(b13)/(z3-1);
        a13=[a13;c13];
        g3=(x_N11(j)-FF3(z3,j));
        kk4=[kk4;g3];
        c3=max(kk4);
        kk3=[kk3;c3];
        d13=[d13;sum(abs(b13-c13))];
    end
    ka3=max(kk3);
    
    FF4= sort(P4,'ascend');
    kk4=[];
    a14=[];
    d14=[];
    for j=1:m
        kk5=(FF4(1,j)-x_01(j));
        % kk5=0;
        b14=[];
        for i=1:z4-1
            a4=(FF4(i+1,j)-FF4(i,j));
            b14=[b14;a4];
            kk5=[kk5;a4];
        end
        c14=sum(b14)/(z4-1);
        a14=[a14;c14];
        g4=(x_N11(j)-FF4(z4,j));
        kk5=[kk5;g4];
        c4=max(kk5);
        kk4=[kk4;c4];
        d14=[d14;sum(abs(b14-c14))];
    end
    ka4=max(kk4);
    %
    % FF5= sort(P5,'ascend');
    %         kk5=[];
    %         a15=[];
    %         d15=[];
    %         for j=1:m
    %             kk6=(FF5(1,j)-x_01(j));
    %            % kk5=0;
    %             b15=[];
    %             for i=1:z5-1
    %                 a5=(FF5(i+1,j)-FF5(i,j));
    %                 b15=[b15;a5];
    %                 kk6=[kk6;a5];
    %             end
    %             c15=sum(b15)/(z5-1);
    %             a15=[a15;c15];
    %             g5=(x_N11(j)-FF5(z5,j));
    %             kk6=[kk6;g5];
    %             c5=max(kk6);
    %             kk5=[kk5;c5];
    %             d15=[d15;sum(abs(b15-c15))];
    %         end
    %         ka5=max(kk5);
    Rloopps(s1,1:s)=[ka1,ka2,ka3,ka4];
    
    da1=[];
    for j=1:m
        de1=((FF1(1,j)-x_01(j))+(x_N11(j)-FF1(z1,j))+d11(j))/((FF1(1,j)-x_01(j))+(x_N11(j)-FF1(z1,j))+(z1-1)*a11(j));
        da1=[da1;de1];
    end
    data1=max(da1);
    da2=[];
    for j=1:m
        de2=((FF2(1,j)-x_01(j))+(x_N11(j)-FF2(z2,j))+d12(j))/((FF2(1,j)-x_01(j))+(x_N11(j)-FF2(z2,j))+(z2-1)*a12(j));
        da2=[da2;de2];
    end
    data2=max(da2);
    
    da3=[];
    for j=1:m
        de3=((FF3(1,j)-x_01(j))+(x_N11(j)-FF3(z3,j))+d13(j))/((FF3(1,j)-x_01(j))+(x_N11(j)-FF3(z3,j))+(z3-1)*a13(j));
        da3=[da3;de3];
    end
    data3=max(da3);
    
    da4=[];
    for j=1:m
        de4=((FF4(1,j)-x_01(j))+(x_N11(j)-FF4(z4,j))+d14(j))/((FF4(1,j)-x_01(j))+(x_N11(j)-FF4(z4,j))+(z4-1)*a14(j));
        da4=[da4;de4];
    end
    data4=max(da4);
    
    % da5=[];
    % for j=1:m
    %     de5=((FF5(1,j)-x_01(j))+(x_N11(j)-FF5(z5,j))+d15(j))/((FF5(1,j)-x_01(j))+(x_N11(j)-FF5(z5,j))+(z5-1)*a15(j));
    %     da5=[da5;de5];
    % end
    % data5=max(da5);
    data(s1,1:s)=[data1,data2,data3,data4];
    s1=s1+1;
    j1=j1+m;
end

% S11=load('GAMMA4.mat');BP11 = struct2cell(S11);data1 = cell2mat(BP11);
% S12=load('DELTA4.mat');BP12 = struct2cell(S12);data2 = cell2mat(BP12);
data1 = Rloopps;
data2 = data;
for ddd=1:2
    if ddd==1
        data1(find(isnan(data1)))=100;
        iter=data1;
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
        %subplot(1,2,1) ;
        figure(1);
        plot(tx(1,:),ty(1,:),'-h','Color',[0.7412 0.1176 0.1176],'linewidth',1.7)
        hold on
        plot(tx(2,:),ty(2,:),'-.>','Color',[1 0.6667 0.1961],'linewidth',1.7)
        hold on
        plot(tx(3,:),ty(3,:),':o','Color',[0.1882 0.5922 0.6431],'linewidth',1.7)
        hold on
        plot(tx(4,:),ty(4,:),'--*','Color',[0.0196 0.3137 0.3569],'linewidth',1.7)
        %         plot(tx(5,:),ty(5,:),'-.','Color',[0.4660,0.6740,0.1880],'linewidth',1.5)
        %         hold on
        axis([1 7.5 0 1.1])
        xlabel('\tau');
        ylabel('\rho(\tau)')
        %title('(I) Iterations','fontname','Times New Roman','Color','k','FontSize',13)
        title('\Gamma')
        legend('Regularized quasi-Newton','Trust region','Steepest descent','Newton with safeguards','location','southeast')
        
    elseif ddd==2
        data2(find(isnan(data2)))=100;
        iter=data2;
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
        %subplot(1,2,2) ;
        figure(2);
        plot(tx(1,:),ty(1,:),'-h','Color',[0.7412 0.1176 0.1176],'linewidth',1.7)
        hold on
        plot(tx(2,:),ty(2,:),'-.>','Color',[1 0.6667 0.1961],'linewidth',1.7)
        hold on
        plot(tx(3,:),ty(3,:),':o','Color',[0.1882 0.5922 0.6431],'linewidth',1.7)
        hold on
        plot(tx(4,:),ty(4,:),'--*','Color',[0.0196 0.3137 0.3569],'linewidth',1.7)
        %         plot(tx(5,:),ty(5,:),'-.','Color',[0.4660,0.6740,0.1880],'linewidth',1.5)
        %         hold on
        axis([1 6.8 0 1.1])
        xlabel('\tau')
        ylabel('\rho(\tau)')
        %title('(I) Iterations','fontname','Times New Roman','Color','k','FontSize',13)
        title('\Delta')
        legend('Regularized quasi-Newton','Trust region','Steepest descent','Newton with safeguards','location','southeast')
    end
end

