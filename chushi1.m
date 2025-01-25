function S1=chushi1(d)    %%变更初始点之后的函数
global m
global n
if d==1
    S1 = load('BK1.mat');
    m=2;
    n=2;
    %xk=-5+(10-(-5))*rand(n,1);
elseif d==2
    m=2;
    S1 = load('DGO1.mat');
    n=1;
    %xk=-10+(13-(-10))*rand(n,1);
elseif d==3
    m=2;
    S1 = load('DGO2.mat');
    n=1;
    % xk=-1+(1-(-1))*rand(n,1);
elseif d==4
    m=2;
    S1 = load('FF1.mat');
    n=2;

elseif d==5
    m=2;
    S1 = load('JOS11.mat');
    n=10;
elseif d==6
    m=2;
    S1 = load('JOS12.mat');
    n=50;
elseif d==7
    m=2;
    S1 = load('JOS13.mat');
    n=100;

elseif d==8
    m=2;
    S1 = load('LE1.mat');
    n=2;
elseif d==9
    m=2;
    S1 = load('MLF1.mat');
    n=1;
elseif d==10
    m=2;
    S1 = load('MLF2.mat');
    n=2;
elseif d==11
    m=2;
    S1 = load('T1.mat');
    n=2;
elseif d==12
    m=2;
    S1 = load('T2.mat');
    n=2;
elseif d==13
    m=2;
    S1 = load('T41.mat');
    n=2;
elseif d==14
    m=2;
%   S1 = load('T7.mat'); 
    S1 = load('T7-1.mat');
    n=3;
elseif d==15
    m=3;
    S1 = load('T81.mat');
    n=10;
elseif d==16
    m=3;
    S1 = load('T82.mat');
    n=50;
elseif d==17
    m=3;
    S1 = load('T83.mat');
    n=100;
elseif d==18
    m=2;
    S1 = load('SP1.mat');
    n=2;
elseif d==19
    m=2;
    S1 = load('SSFYY1.mat');
    n=2;
elseif d==20
    m=2;
    S1 = load('SSFYY2.mat');
    n=1;
elseif d==21
    m=2;
    S1 = load('SK1.mat');
    n=1;
elseif d==22
    m=2;
    S1 = load('SK2.mat');
    n=4;
elseif d==23
    m=2;
    S1 = load('VU1.mat');
    n=2;
elseif d==24
    m=2;
    S1 = load('MOP1.mat');
    n=1;
elseif d==25
    m=2;
    S1 = load('MOP2.mat');
    n=2;
elseif d==26
    m=2;
    S1 = load('MOP3.mat');
    n=2;
elseif d==27
    m=3;
    S1 = load('MOP5.mat');
    n=2;

elseif d==28
    m=3;
    S1 = load('MOP7.mat');
    n=2;
elseif d==29
    m=2;
%     S1 = load('DD1.mat');
    S1 = load('DD1-1.mat');
    n=5;
elseif d==30
    m=2;
    S1 = load('KW2.mat');
    n=2;
elseif d==31
    m=2;
    S1 = load('TOI4.mat');
    n=4;
    %  xk = 0.1 + ( 10 - (0.1 ))*rand(n,1);
elseif d==32
    m=3;
    S1 = load('TOI8.mat');
    n=3;
elseif d==33
    m=4;
    S1 = load('TOI91.mat');
    n=4;
elseif d==34
    m=14;
    S1 = load('TOI92.mat');
    n=14;
elseif d==35
    m=2;
    S1 = load('TOI101.mat'); 
    n=3;
elseif d==36
    m=2;
    S1 = load('HIL1.mat');
    n=2;
elseif d==37
    m=2;
    S1 = load('PNR.mat');
    n=2;
elseif d==38
    m=2;
    S1 = load('MMR1.mat');
    n=2;

elseif d==39
    m=3;
    S1 = load('AP1.mat');
    n=2;
elseif d==40
    m=2;
    n=1;
    S1 = load('AP2.mat');
elseif d==41
    m=2;
    n=2;
    S1 = load('AP3.mat');
elseif d==42
    m=3;
    n=3;
    S1 = load('AP4.mat');
elseif d==43
    m=2;
    S1 = load('SD.mat');
%     S1 = load('SD-1.mat');
    n=4;
elseif d==44
    m=2;
    S1 = load('LRS1.mat');
    n=2;
elseif d==45
    m=3;
    n=2;
    S1 = load('IKK1.mat');
elseif d==46
    m=3;
    n=1;
    S1 = load('MHHM1.mat');
elseif d==47
    m=3;
    n=2;
    S1 = load('MHHM2.mat');
elseif d==48
    m=3;
    n=2;
    S1 = load('VFM1.mat');
elseif d==49
    m=3;
    S1 = load('ZLT1.mat');
    n=3;
elseif d==50
    m=3;
    S1 = load('FDS1.mat');
    n=10;
elseif d==51
    m=3;
    S1 = load('FDS2.mat');
    n=50;
elseif d==52
    m=3;
    S1 = load('FDS3.mat');
    n=100;
elseif d==53
    m=3;
    S1 = load('SLCDT2-1.mat');
%     S1 = load('SLCDT2.mat');
    n=10;
elseif d==54
    m=4;
    n=4;
    S1=load('MGH13.mat');
elseif d==55
    m=10;
    n=4;
    S1=load('MGH161.mat');
elseif d==56
    m=2;
    n=2;
     S1=load('MGH26.mat');
elseif d==57
    m=2;
    n=4;
    S1=load('FES1.mat');
elseif d==58
    m=3;
    n=5;
    S1=load('FES2.mat');
elseif d==59
    m=2;
    n=2;
    S1=load('FAR1.mat');
elseif d==60
    m=2;
    S1 = load('T42.mat');
    n=4;
elseif d==61
    m=2;
    S1 = load('T43.mat');
    n=6;
elseif d==62
    m=2;
    S1 = load('T44.mat');
    n=8;
elseif d==63
    m=2;
    S1 = load('MOP21.mat');
    n=10;
elseif d==64
    m=2;
    S1 = load('MOP22.mat');
    n=20;
elseif d==65
    m=2;
    S1 = load('MOP23.mat');
    n=50;
elseif d==66
    m=24;
    S1 = load('TOI93.mat');
    n=24;
elseif d==67
    m=34;
    S1 = load('TOI94.mat');
    n=34;
elseif d==68
    m=4;
    S1 = load('TOI102.mat'); 
    n=5;
elseif d==69
    m=9;
    S1 = load('TOI103.mat'); 
    n=10;
elseif d==70
    m=19;
    S1 = load('TOI104.mat'); 
    n=20;
elseif d==71
    m=10;
    n=4;
    S1=load('MGH162.mat');
elseif d==72
    m=20;
    n=4;
    S1=load('MGH163.mat');
elseif d==73
    m=50;
    n=4;
    S1=load('MGH164.mat');
elseif d==74
    m=4;
    n=4;
    S1=load('MGH261.mat');
elseif d==75
    m=6;
    n=6;
    S1=load('MGH262.mat');
elseif d==76
    m=8;
    n=8;
    S1=load('MGH263.mat');
end
