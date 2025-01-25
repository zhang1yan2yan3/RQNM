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
    S1 = load('IM1.mat');
    n=2;
elseif d==6
    m=2;
    S1 = load('JOS11.mat');
    n=10;
elseif d==7
    m=2;
    S1 = load('JOS12.mat');
    n=50;
elseif d==8
    m=2;
    S1 = load('JOS13.mat');
    n=100;
elseif d==9
    m=2;
    S1 = load('JOS41.mat');
    n=2;
elseif d==10
    m=2;
    S1 = load('LE1.mat');
    n=2;
elseif d==11
    m=2;
    S1 = load('MLF1.mat');
    n=1;
elseif d==12
    m=2;
    S1 = load('MLF2.mat');
    n=2;
elseif d==13
    m=2;
    S1 = load('T1.mat');
    n=2;
elseif d==14
    m=2;
    S1 = load('T2.mat');
    n=2;
elseif d==15
    m=2;
    S1 = load('T41.mat');
    n=2;
elseif d==16
    m=2;
    S1 = load('T6.mat');
    n=2;
elseif d==17
    m=2;
%   S1 = load('T7.mat'); 
    S1 = load('T7-1.mat');
    n=3;
elseif d==18
    m=3;
    S1 = load('T81.mat');
    n=10;
elseif d==19
    m=3;
    S1 = load('T82.mat');
    n=50;
elseif d==20
    m=3;
    S1 = load('T83.mat');
    n=100;
elseif d==21
    m=2;
    S1 = load('SP1.mat');
    n=2;
elseif d==22
    m=2;
    S1 = load('SSFYY1.mat');
    n=2;
elseif d==23
    m=2;
    S1 = load('SSFYY2.mat');
    n=1;
elseif d==24
    m=2;
    S1 = load('SK1.mat');
    n=1;
elseif d==25
    m=2;
    S1 = load('SK2.mat');
    n=4;
elseif d==26
    m=2;
    S1 = load('VU1.mat');
    n=2;
elseif d==27
    m=2;
    S1 = load('MOP1.mat');
    n=1;
elseif d==28
    m=2;
    S1 = load('MOP2.mat');
    n=2;
elseif d==29
    m=2;
    S1 = load('MOP3.mat');
    n=2;
elseif d==30
    m=3;
    S1 = load('MOP5.mat');
    n=2;
elseif d==31
    m=2;
     S1 = load('MOP6.mat');
    n=2;
elseif d==32
    m=3;
    S1 = load('MOP7.mat');
    n=2;
elseif d==33
    m=2;
%     S1 = load('DD1.mat');
    S1 = load('DD1-1.mat');
    n=5;
elseif d==34
    m=2;
    S1 = load('KW2.mat');
    n=2;
elseif d==35
    m=2;
    S1 = load('TOI4.mat');
    n=4;
    %  xk = 0.1 + ( 10 - (0.1 ))*rand(n,1);
elseif d==36
    m=3;
    S1 = load('TOI8.mat');
    n=3;
elseif d==37
    m=4;
    S1 = load('TOI91.mat');
    n=4;
elseif d==38
    m=14;
    S1 = load('TOI92.mat');
    n=14;
elseif d==39
    m=2;
    S1 = load('TOI101.mat'); 
    n=3;
elseif d==40
    m=2;
    S1 = load('HIL1.mat');
    n=2;
elseif d==41
    m=2;
    S1 = load('PNR.mat');
    n=2;
elseif d==42
    m=2;
    S1 = load('MMR1.mat');
    n=2;
elseif d==43
    m=2;
    S1 = load('MMR5.mat');
    n=5;
elseif d==44
    m=3;
    S1 = load('AP1.mat');
    n=2;
elseif d==45
    m=2;
    n=1;
    S1 = load('AP2.mat');
elseif d==46
    m=2;
    n=2;
    S1 = load('AP3.mat');
elseif d==47
    m=3;
    n=3;
    S1 = load('AP4.mat');
elseif d==48
    m=2;
    n=2;
    S1 = load('LOV1.mat');
elseif d==49
    m=2;
    n=2;
    S1 = load('LOV2.mat');
elseif d==50
    m=2;
    n=2;
    S1 = load('LOV3.mat');
elseif d==51
    m=2;
    n=2;
    S1 = load('LOV4.mat');
elseif d==52
    m=2;
    n=3;
    S1 = load('LOV5.mat');
elseif d==53
    m=2;
    n=6;
    S1 = load('LOV6.mat');
elseif d==54
    m=2;
    S1 = load('SD.mat');
%     S1 = load('SD-1.mat');
    n=4;
elseif d==55
    m=2;
    S1 = load('LRS1.mat');
    n=2;
elseif d==56
    m=3;
    n=2;
    S1 = load('IKK1.mat');
elseif d==57
    m=3;
    n=1;
    S1 = load('MHHM1.mat');
elseif d==58
    m=3;
    n=2;
    S1 = load('MHHM2.mat');
elseif d==59
    m=3;
    n=2;
    S1 = load('VFM1.mat');
elseif d==60
    m=3;
    S1 = load('ZLT1.mat');
    n=3;
elseif d==61
    m=3;
    S1 = load('FDS1.mat');
    n=10;
elseif d==62
    m=3;
    S1 = load('FDS2.mat');
    n=50;
elseif d==63
    m=3;
    S1 = load('FDS3.mat');
    n=100;
elseif d==64
    m=3;
    S1 = load('MGH4.mat');
    n=2;
elseif d==65
    m=3;
    S1 = load('SLCDT2-1.mat');
%     S1 = load('SLCDT2.mat');
    n=10;
elseif d==66
    m=15;
    S1 = load('MGH8.mat');
    n=3;
elseif d==67
    m=15;
    n=3;
    S1=load('MGH9.mat');
elseif d==68
    m=5;
    n=3;
    S1=load('MGH12.mat');
elseif d==69
    m=4;
    n=4;
    S1=load('MGH13.mat');
elseif d==70
    m=6;
    n=4;
    S1=load('MGH14.mat');
elseif d==71
    m=11;
    n=4;
    S1=load('MGH15.mat');
elseif d==72
    m=10;
    n=4;
    S1=load('MGH161.mat');
elseif d==73
    m=2;
    n=2;
     S1=load('MGH26.mat');
elseif d==74
    m=5;
    n=5;
    S1=load('MGH27.mat');
elseif d==75
    m=5;
    n=5;
    S1=load('MGH28.mat');
elseif d==76
    m=5;
    n=5;
    S1=load('MGH30.mat');
elseif d==77
    m=10;
    n=10;
    S1=load('MGH33.mat');
elseif d==78
    m=2;
    n=1;
    S1=load('SCH1.mat');
elseif d==79
    m=3;
    n=3;
    S1=load('LTDZ1.mat');
elseif d==80
    m=3;
    n=3;
    S1=load('TR1.mat');
elseif d==81
    m=2;
    n=4;
    S1=load('ZDT1.mat');
elseif d==82
    m=2;
    n=4;
    S1=load('ZDT2.mat');
elseif d==83
    m=2;
    n=4;
    S1=load('ZDT3.mat');
elseif d==84
    m=2;
    n=4;
    S1=load('ZDT4.mat');
elseif d==85
    m=2;
    n=4;
    S1=load('ZDT6.mat');
elseif d==86
    m=2;
    n=4;
    S1=load('FES1.mat');
elseif d==87
    m=3;
    n=5;
    S1=load('FES2.mat');
elseif d==88
    m=4;
    n=5;
    S1=load('FES3.mat');
elseif d==89
    m=2;
    n=2;
    S1=load('FAR1.mat');
elseif d==90
    m=3;
    n=3;
    S1=load('FA1.mat');
elseif d==91
    m=2;
    n=4;
    S1=load('QV1.mat');
elseif d==92
    m=2;
    S1 = load('T42.mat');
    n=4;
elseif d==93
    m=2;
    S1 = load('T43.mat');
    n=6;
elseif d==94
    m=2;
    S1 = load('T44.mat');
    n=8;
elseif d==95
    m=2;
    S1 = load('T71.mat');
    n=5;
elseif d==96
    m=2;
    S1 = load('T72.mat');
    n=50;
elseif d==97
    m=2;
    S1 = load('T73.mat');
    n=100;
elseif d==98
    m=2;
    S1 = load('MOP21.mat');
    n=10;
elseif d==99
    m=2;
    S1 = load('MOP22.mat');
    n=20;
elseif d==100
    m=2;
    S1 = load('MOP23.mat');
    n=50;
elseif d==101
    m=24;
    S1 = load('TOI93.mat');
    n=24;
elseif d==102
    m=34;
    S1 = load('TOI94.mat');
    n=34;
elseif d==103
    m=4;
    S1 = load('TOI102.mat'); 
    n=5;
elseif d==104
    m=9;
    S1 = load('TOI103.mat'); 
    n=10;
elseif d==105
    m=19;
    S1 = load('TOI104.mat'); 
    n=20;
elseif d==106
    m=2;
    S1 = load('MMR51.mat');
    n=2;
elseif d==107
    m=2;
    S1 = load('MMR52.mat');
    n=3;
elseif d==108
    m=2;
    S1 = load('MMR53.mat');
    n=4;
elseif d==109
    m=10;
    n=4;
    S1=load('MGH162.mat');
elseif d==110
    m=20;
    n=4;
    S1=load('MGH163.mat');
elseif d==111
    m=50;
    n=4;
    S1=load('MGH164.mat');
elseif d==112
    m=4;
    n=4;
    S1=load('MGH261.mat');
elseif d==113
    m=6;
    n=6;
    S1=load('MGH262.mat');
elseif d==114
    m=8;
    n=8;
    S1=load('MGH263.mat');
end
