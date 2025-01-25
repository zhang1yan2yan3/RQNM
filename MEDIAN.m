clear,clc
S11=load('RINV-K6.mat');BP11 = struct2cell(S11);Mymat11 = cell2mat(BP11);
S15=load('RINV-T6.mat');BP15 = struct2cell(S15);Mymat15 = cell2mat(BP15);

S21=load('TR-K1.mat');BP21 = struct2cell(S21);Mymat21 = cell2mat(BP21);
S25=load('TR-T1.mat');BP25 = struct2cell(S25);Mymat25 = cell2mat(BP25);

S31=load('SD-K2.mat');BP31 = struct2cell(S31);Mymat31 = cell2mat(BP31);
S35=load('SD-T2.mat');BP35 = struct2cell(S35);Mymat35 = cell2mat(BP35);

S41=load('NEWTON2-K.mat');BP41 = struct2cell(S41);Mymat41 = cell2mat(BP41);
S45=load('NEWTON2-T.mat');BP45 = struct2cell(S45);Mymat45 = cell2mat(BP45);

for dd=1:4
    if  dd==1
        K11=[];K12=[];K13=[];K14=[];K15=[];
        for d=1:76
            K11=[K11 Mymat11(:,d)];
            K15=[K15 Mymat15(:,d)];
        end
        K11=sort(K11)';
        K15=sort(K15)';
        RQNK=(K11(:,100)+K11(:,101))/2;
        RQNT=(K15(:,100)+K15(:,101))/2;
    end
    
    if  dd==2
        K11=[];K12=[];K13=[];K14=[];K15=[];
        for d=1:76
            K11=[K11 Mymat21(:,d)];
            K15=[K15 Mymat25(:,d)];
        end
        K11=sort(K11)';
        K15=sort(K15)';
        TRK=(K11(:,100)+K11(:,101))/2;
        TRT=(K15(:,100)+K15(:,101))/2;
    end
    
    if  dd==3
        K11=[];K12=[];K13=[];K14=[];K15=[];
        for d=1:76
            if d==35||d==43||d==53||d==68||d==3||d==21||d==24||d==57||...
                    d==5||d==6||d==7||d==11||d==19||d==47||d==49||d==69||d==27||d==33||d==55
                continue;
            end
            K11=[K11 Mymat31(:,d)];
            K15=[K15 Mymat35(:,d)];
        end
        K11=sort(K11)';
        K15=sort(K15)';
        SDK=(K11(:,100)+K11(:,101))/2;
        SDT=(K15(:,100)+K15(:,101))/2;
    end
    if  dd==4
        K11=[];K12=[];K13=[];K14=[];K15=[];
        for d=1:76
            if d==35||d==43||d==53||d==68||d==3||d==21||d==24||d==57||...
                    d==5||d==6||d==7||d==11||d==19||d==47||d==49||d==69||d==27||d==33||d==55
                continue;
            end
            K11=[K11 Mymat41(:,d)];
            K15=[K15 Mymat45(:,d)];
        end
        K11=sort(K11)';
        K15=sort(K15)';
        NEWTONK=(K11(:,100)+K11(:,101))/2;
        NEWTONT=(K15(:,100)+K15(:,101))/2;
    end
end


