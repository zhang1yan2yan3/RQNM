function f=f(x,d)
global m
global n
if d==1 %% BK1鍑芥暟绗竴涓?-5-10
    f1=x(1)^2+x(2)^2;
    f2=(x(1)-5)^2+(x(2)-5)^2;
    f=[f1;f2]; 
elseif d==2%% DGO1鍑芥暟绗竴涓?-10-13 1缁?
    f1=sin(x);
    f2=sin(x+0.7);
    f=[f1;f2];
elseif d==3%% DGO2鍑芥暟绗竴涓?-3-3
    f1=x^2;
    f2=9-sqrt(81-x^2);
    f=[f1;f2];
elseif d==4%% FF1鍑芥暟 -1-1 m=n=2
    f1=1-exp(-(x(1)-1)^2-(x(2)+1)^2);
    f2=1-exp(-(x(1)+1)^2-(x(2)-1)^2);
    f=[f1;f2];      
elseif d==5%%  JOS1鍑芥暟-100-100
    F1=0;
    for i=1:n
        a=x(i)^2/n;
        F1=F1+a;
    end
    f1=F1;
    F2=0;
    for i=1:n
        b=(x(i)-2)^2/n;
        F2=F2+b;
    end
    f2=F2;
    f=[f1;f2]; 
elseif d==6%%  JOS1鍑芥暟-100-100
    F1=0;
    for i=1:n
        a=x(i)^2/n;
        F1=F1+a;
    end
    f1=F1;
    F2=0;
    for i=1:n
        b=(x(i)-2)^2/n;
        F2=F2+b;
    end
    f2=F2;
    f=[f1;f2];
elseif d==7%%  JOS1鍑芥暟-100-100
    F1=0;
    for i=1:n
        a=x(i)^2/n;
        F1=F1+a;
    end
    f1=F1;
    F2=0;
    for i=1:n
        b=(x(i)-2)^2/n;
        F2=F2+b;
    end
    f2=F2;
    f=[f1;f2];    
elseif d==8%%  LE1鍑芥暟 -5-10
    f1=(x(1)^2+x(2)^2)^0.125;
    f2=((x(1)-0.5)^2+(x(2)-0.5)^2)^0.25;
    f=[f1;f2];
elseif d==9%%  MLF1鍑芥暟0-20
    f1=(1+x/20)*sin(x);
    f2=(1+x/20)*cos(x);
    f=[f1;f2];   
elseif d==10%%  MLF2鍑芥暟-100-100
    f1=-(5-((x(1)^2+x(2)-11)^2+(x(1)+x(2)^2-7)^2)/200);
    f2=-(5-((4*x(1)^2+2*x(2)-11)^2+(2*x(1)+4*x(2)^2-7)^2)/200);
    f=[f1;f2];
elseif d==11%%  T1鍑芥暟-1-1
    f1=0.5*x(1)^2+x(2)^2-10*x(1)-100;
    f2=x(1)^2+0.5*x(2)^2-10*x(2)-100;
    f=[f1;f2];  
elseif d==12%%  T2鍑芥暟-2-2
    f1=sin(x(2));
    f2=1-exp(-(x(1)-1/sqrt(2))^2-(x(2)-1/sqrt(2))^2);
    f=[f1;f2];    
elseif d==13%%  T4鍑芥暟-10-10   10缁?
    F1=0;
    for i=1:n-1
        a=x(i)^2;
        F1=F1+a;
    end
    f1=F1+2;
    F2=0;
    for i=1:n
        b=x(i);
        F2=F2+b;
    end
    f2=F2-2;
    f=[f1;f2];   
elseif d==14 %%  T7鍑芥暟锛?锛?0-10 m=2,n=3
    F(1)=0;
    for i=1:n
        a=x(i)^4+x(i)^3;
        F(1)=F(1)+a;
    end
    f1=F(1);
    F(2)=0;
    for i=1:n
        b=x(i);
        F(2)=F(2)+b;
    end
    f2=F(2);
    f=[f1;f2]; 
elseif d==15%%  T8鍑芥暟   6 0-10 3wei
    f1=0;
    for i=1:n
        a=x(i)^3;
        f1=f1+a;
    end
    F2=0;
    for i=1:n-1
        b=(x(i)-4)^2;
        F2=F2+b;
    end
    f2=F2+x(n)^2;
    F3=0;
    for i=2:n
        c=5*x(i)^2;
        F3=F3+c;
    end
    f3=-log(x(1))+F3;
    f=[f1;f2;f3]; 
elseif d==16%%  T8鍑芥暟   6 0-10 3wei
    f1=0;
    for i=1:n
        a=x(i)^3;
        f1=f1+a;
    end
    F2=0;
    for i=1:n-1
        b=(x(i)-4)^2;
        F2=F2+b;
    end
    f2=F2+x(n)^2;
    F3=0;
    for i=2:n
        c=5*x(i)^2;
        F3=F3+c;
    end
    f3=-log(x(1))+F3;
    f=[f1;f2;f3];    
elseif d==17%%  T8鍑芥暟   6 0-10 3wei
    f1=0;
    for i=1:n
        a=x(i)^3;
        f1=f1+a;
    end
    F2=0;
    for i=1:n-1
        b=(x(i)-4)^2;
        F2=F2+b;
    end
    f2=F2+x(n)^2;
    F3=0;
    for i=2:n
        c=5*x(i)^2;
        F3=F3+c;
    end
    f3=-log(x(1))+F3;
    f=[f1;f2;f3];
elseif d==18%%  SP1鍑芥暟-100-100
    f1=(x(1)-1)^2+(x(1)-x(2))^2;
    f2=(x(2)-3)^2+(x(1)-x(2))^2;
    f=[f1;f2];  
elseif d==19%%  SSFYY1鍑芥暟-100-100
    f1=x(1)^2+x(2)^2;
    f2=(x(1)-1)^2+(x(2)-2)^2;
    f=[f1;f2];    
elseif d==20%% SSFYY2鍑芥暟-100-100
    f1=10+x^2-10*cos(x*pi/2);
    f2=(x-4)^2;
    f=[f1;f2];    
elseif d==21%%  SK1鍑芥暟-100-100
    f1=-(-x^4-3*x^3+10*x^2+10*x+10);
    f2=-(-0.5*x^4+2*x^3+10*x^2-10*x+5);
    f=[f1;f2]; 
elseif d==22%% SK2-10-10
    f1=(x(1)-2)^2+(x(2)+3)^2+(x(3)-5)^2+(x(4)-4)^2-5;
    b=x(1)^2+x(2)^2+x(3)^2+x(4)^2;
    f2=-((sin(x(1))+sin(x(2))+sin(x(3))+sin(x(4)))/(1+b/100));
    f=[f1;f2];   
elseif d==23 %%  VU1鍑芥暟-3-3
    f1=1/(x(1)^2+x(2)^2+1);
    f2=x(1)^2+3*x(2)^2+1;
    f=[f1;f2]; 
elseif d==24 %%  MOP1鍑芥暟-10^5-10^5
    f1=x^2;
    f2=(x-2)^2;
    f=[f1;f2]; 
elseif d==25%%  MOP2鍑芥-4-4
    f1=0;
    for i=1:n
        a=(x(i)-1/sqrt(n))^2;
        f1=f1+a;
    end
    f1=1-exp(-f1);
    f2=0;
    for i=1:n
        b=(x(i)+1/sqrt(n))^2;
        f2=f2+b;
    end
    f2=1-exp(-f2);
    f=[f1;f2];  
elseif d==26%%  MOP3鍑芥暟-PI-PI
    A1=0.5*sin(1)-2*cos(1)+sin(2)-1.5*cos(2);
    A2=1.5*sin(1)-cos(1)+2*sin(2)-0.5*cos(2);
    B1=0.5*sin(x(1))-2*cos(x(1))+sin(x(2))-1.5*cos(x(2));
    B2=1.5*sin(x(1))-cos(x(1))+2*sin(x(2))-0.5*cos(x(2));
    f1=-(-1-(A1-B1)^2-(A2-B2)^2);
    f2=-(-(x(1)+3)^2-(x(2)+1)^2);
    f=[f1;f2];  
elseif d==27%%  MOP5鍑芥暟   7 -30-30  2wei
    f1=0.5*(x(1)^2+x(2)^2)+sin(x(1)^2+x(2)^2);
    f2=(3*x(1)-2*x(2)+4)^2/8+(x(1)-x(2)+1)^2/27+15;
    f3=1/(x(1)^2+x(2)^2+1)-1.1*exp(-x(1)^2-x(2)^2);
    f=[f1;f2;f3];        
elseif d==28 %%  MOP7鍑芥暟   8 -400-400 2wei
    f1=(x(1)-2)^2/2+(x(2)+1)^2/13+3;
    f2=(x(1)+x(2)-3)^2/36+(-x(1)+x(2)+2)^2/8-17;
    f3=(x(1)+2*x(2)-1)^2/175+(-x(1)+2*x(2))^2/17-13;
    f=[f1;f2;f3];  
elseif d==29%%  DD1鍑芥暟-20-20
    f1=x(1)^2+x(2)^2+x(3)^2+x(4)^2+x(5)^2;
    f2=3*x(1)+2*x(2)-x(3)/3+0.01*(x(4)-x(5))^3;
    f=[f1;f2];   
elseif d==30%%  KW2鍑芥暟-3-3
    a1=3*(1-x(1))^2;b1=-x(1)^2-(x(2)+1)^2;c1=10*(x(1)/5-x(1)^3-x(2)^5);
    d1=-x(1)^2-x(2)^2;e1=-(x(1)+2)^2-x(2)^2;f1=0.5*(2*x(1)+x(2));
    f1=-(a1*exp(b1)-c1*exp(d1)-3*exp(e1)+f1);
    a2=3*(1+x(2))^2;b2=-x(2)^2-(1-x(1))^2;c2=10*(-x(2)/5+x(2)^3+x(1)^5);
    d2=-x(2)^2-x(1)^2;e2=-(2-x(2))^2-x(1)^2;
    f2=-(a2*exp(b2)-c2*exp(d2)-3*exp(e2));
    f=[f1;f2];  
elseif d==31%%  TOI4鍑芥暟-2-5
    f1=x(1)^2+x(2)^2+1;
    f2=0.5*((x(1)-x(2))^2+(x(3)-x(4))^2)+1;
    f=[f1;f2];   
elseif d==32  %-1-1 toi8
    f1=(2*x(1)-1)^2;
    f2=2*(2*x(1)-x(2))^2;
    f3=3*(2*x(2)-x(3))^2;
    f=[f1;f2;f3];  
elseif d==33 %TRIDIA -1-1 m=n=4    6  TOI9
    f1=(2*x(1)-1)^2+x(2)^2;
    f2=2*(2*x(1)-x(2))^2-x(1)^2+2*x(2)^2;
    f3=3*(2*x(2)-x(3))^2-2*x(2)^2+3*x(3)^2;
    f4=4*(2*x(3)-x(4))^2-3*x(3)^2;
    f=[f1;f2;f3;f4];    
elseif d==34  %TRIDIA -1-1 m=n=24   5     Toi9 M=N
    f=[];
    f1=(2*x(1)-1)^2+x(2)^2;
    f=[f;f1];
    for i=2:m-1
        ff=i*(2*x(i-1)-x(i))^2-(i-1)*x(i-1)^2+i*x(i)^2;
        f=[f;ff];
    end
    fm=m*(2*x(m-1)-x(m))^2-(m-1)*x(m-1)^2;
    f=[f;fm];      
elseif d==35 %-2-2 Rosenbrock   9 toi10  M=N
    f=[];
    for i=1:m
        fi=100*(x(i+1)-x(i)^2)^2+(x(i+1)-1)^2;
        f=[f;fi];
    end   
elseif d==36%%  Hil1鍑芥暟0-1
    a=(2*pi/360)*(45+40*sin(2*pi*x(1))+25*sin(2*pi*x(2)));
    b=1+0.5*cos(2*pi*x(1));
    f1=b*cos(a);
    a=(2*pi/360)*(45+40*sin(2*pi*x(1))+25*sin(2*pi*x(2)));
    b=1+0.5*cos(2*pi*x(1));
    f2=b*sin(a);
    f=[f1;f2];   
elseif d==37 %%  PNR鍑芥暟-2-2
    c=10;d=0.25;
    f1=x(1)^4+x(2)^4+x(1)^2+x(2)^2+c*x(1)*x(2)+d*x(1)+20;
    k=1;
    l=0;
    f2=(x(1)-k)^2+(x(2)-l)^2;
    f=[f1;f2];    
elseif d==38%% MMR1 0-1
    f1=1+x(1)^2;
    f2=(2-0.8*exp(-((x(2)-0.6)/0.4)^2)-exp(-((x(2)-0.2)/0.04)^2))/(1+x(1)^2);
    f=[f1;f2];   
elseif d==39 %ap1 -100-100
    f1=1/4*((x(1)-1)^4+2*(x(2)-4)^4);
    f2=exp((x(1)+x(2))/2)+x(1)^2+x(2)^2;
    f3=1/6*(exp(-x(1))+2*exp(-x(2)));
    f=[f1;f2;f3];  
elseif d==40 %ap2 -100-100
    f1=x^2-4;
    f2=(x-1)^2;
    f=[f1;f2];    
elseif d==41  %ap3 -100-100
    f1=1/4*((x(1)-4)^4+2*(x(2)-2)^4);
    f2=(x(2)-x(1)^2)^2+(1-x(1))^2;
    f=[f1;f2]; 
elseif d==42 %ap4-5-5
    f1=1/9*((x(1)-1)^4+2*(x(2)-2)^4+3*(x(3)-3)^4);
    f2=exp((x(1)+x(2)+x(3))/3)+x(1)^2+x(2)^2+x(3)^2;
    f3=1/12*(3*exp(-x(1))+4*exp(-x(2))+3*exp(-x(3)));
    f=[f1;f2;f3];      
elseif d==43  %SD 0-1
    f1=2*x(1)+sqrt(2)*x(2)+sqrt(2)*x(3)+x(4);
    f2=2/x(1)+2*sqrt(2)/x(2)+2*sqrt(2)/x(3)+2/x(4);
    f=[f1;f2];    
elseif d==44  % LRS1    n=m=2    [-50,50]
    f1=x(1)^2+x(2)^2;
    f2=(x(1)+2)^2+x(2)^2;
    f=[f1;f2];   
elseif d==45  %% IKK1   1 -50-50 2wei   三个目标
    f1=x(1)^2;
    f2=(x(1)-20)^2;
    f3=x(2)^2;
    f=[f1;f2;f3];   
elseif d==46   %  MHHM1    2 0-1 1wei
    f1=(x-0.8)^2;
    f2=(x-0.85)^2;
    f3=(x-0.9)^2;
    f=[f1;f2;f3];  
elseif d==47 %%  MHHM2   3 0-1 2wei
    f1=(x(1)-0.8)^2+(x(2)-0.6)^2;
    f2=(x(1)-0.85)^2+(x(2)-0.7)^2;
    f3=(x(1)-0.9)^2+(x(2)-0.6)^2;
    f=[f1;f2;f3];   
elseif d==48%%  VFM1   4 -2-2  2wei
    f1=x(1)^2+(x(2)-1)^2;
    f2=x(1)^2+(x(2)+1)^2+1;
    f3=(x(1)-1)^2+x(2)^2+2;
    f=[f1;f2;f3];  
elseif d==49%%  ZLT1   5 -1000-1000 3wei
    f1=(x(1)-1)^2+x(2)^2+x(3)^2;
    f2=(x(2)-1)^2+x(1)^2+x(3)^2;
    f3=(x(3)-1)^2+x(1)^2+x(2)^2;
    f=[f1;f2;f3];    
elseif d==50%%  FDS   9  -2-2 10,50,100wei
    F1=0;
    for i=1:n
        a=i*(x(i)-i)^4;
        F1=a+F1;
    end
    f1=F1/n^2;
    F2=0;
    for i=1:n
        a=x(i)/n;
        F2=a+F2;
    end
    f2=exp(F2)+norm(x,2)^2;
    F3=0;
    for i=1:n
        a=i*(n-i+1)*exp(-x(i));
        F3=a+F3;
    end
    f3=F3/(n*(n+1));
    f=[f1;f2;f3];   
elseif d==51%%  FDS  9  -2-2 10,50,100wei
    F1=0;
    for i=1:n
        a=i*(x(i)-i)^4;
        F1=a+F1;
    end
    f1=F1/n^2;
    F2=0;
    for i=1:n
        a=x(i)/n;
        F2=a+F2;
    end
    f2=exp(F2)+norm(x,2)^2;
    F3=0;
    for i=1:n
        a=i*(n-i+1)*exp(-x(i));
        F3=a+F3;
    end
    f3=F3/(n*(n+1));
    f=[f1;f2;f3];   
elseif d==52  %%  FDS   9  -2-2 10,50,100wei
    F1=0;
    for i=1:n
        a=i*(x(i)-i)^4;
        F1=a+F1;
    end
    f1=F1/n^2;
    F2=0;
    for i=1:n
        a=x(i)/n;
        F2=a+F2;
    end
    f2=exp(F2)+norm(x,2)^2;
    F3=0;
    for i=1:n
        a=i*(n-i+1)*exp(-x(i));
        F3=a+F3;
    end
    f3=F3/(n*(n+1));
    f=[f1;f2;f3];   
elseif d==53  %-50-50 %SLCDT2
    f11=0;
    for i=2:10
        f12=(x(i)-1)^2;
        f11=f12+f11;
    end
    f1=f11+(x(1)-1)^4;
    f12=0;
    for i=3:10
        f13=(x(i)+1)^2;
        f12=f13+f12;
    end
    f2=f12+(x(1)+1)^2+(x(2)+1)^4;
    f3=(x(1)-1)^2+(x(2)+1)^2+(x(3)-1)^4+(x(4)+1)^2+(x(5)-1)^2+(x(6)+1)^2+(x(7)-1)^2+(x(8)+1)^2+(x(9)-1)^2+(x(10)+1)^2;
    f=[f1;f2;f3];
elseif d==54 %mgh13  10  m=n=4  -1-1 
    f1=x(1)+10*x(2);
    f2=sqrt(5)*(x(3)-x(4));
    f3=(x(2)-2*x(3))^2;
    f4=sqrt(10)*(x(1)-x(4))^2;
    f=[f1;f2;f3;f4];
elseif d==55  %MGH16   [-25 -5 -5 -1]到[25 5 5 1]
    f=[];
    for l=1:m
        f1=(x(1)+l/5*x(2)-exp(l/5))^2+(x(3)+x(4)*sin(l/5)-cos(l/5))^2;
        f=[f;f1];
    end        
elseif d==56 %m=n x0  -1-1   %mgh26   
    f=[];
    a=0;
    for i=1:n
        a=a+cos(x(i));
    end
    for l=1:n
        f1=(4-a+l*(1-cos(x(l)))-sin(x(l)))^2;
        f=[f;f1];
    end
elseif d==57 %FES1  [0,1]
    a=zeros(n,1);
    for i=1:n
        a(i)=abs(x(i)-(exp((i/n)^2))/3)^0.5;
    end
    f1=sum(a);
    a=zeros(n,1);
    for i=1:n
        a(i)=(x(i)-0.5*cos((10*pi*i)/n)-0.5)^2;
    end
    f2=sum(a);
    f=[f1;f2];    
elseif d==58 %FES2 [0,1]
    a=zeros(n,1);
    for i=1:n
        a(i)=(x(i)-0.5*cos((10*pi*i)/n)-0.5)^2;
    end
    f1=sum(a);
    a=zeros(n,1);
    for i=1:n
        a(i)=abs(x(i)-(sin(i-1))^2*(cos(i-1))^2)^0.5;
    end
    f2=sum(a);
    a=zeros(n,1);
    for i=1:n
        a(i)=abs(x(i)-0.25*cos(i-1)*cos(2i-2)-0.5)^0.5;
    end
    f3=sum(a);
    f=[f1;f2;f3];
elseif d==59    %Far1 [-1,1]
    f1=-2*exp(15*(-(x(1)-0.1)^2-x(2)^2))-exp(20*(-(x(1)-0.6)^2-(x(2)-0.6)^2)) ...
        +exp(20*(-(x(1)+0.6)^2-(x(2)-0.6)^2))+exp(20*(-(x(1)-0.6)^2-(x(2)+0.6)^2)) ...
        +exp(20*(-(x(1)+0.6)^2-(x(2)+0.6)^2));
    f2=2*exp(20*(-x(1)^2-x(2)^2))+exp(20*(-(x(1)-0.4)^2-(x(2)-0.6)^2)) ...
        -exp(20*(-(x(1)+0.5)^2-(x(2)-0.7)^2))-exp(20*(-(x(1)-0.5)^2-(x(2)+0.7)^2)) ...
        +exp(20*(-(x(1)+0.4)^2-(x(2)+0.8)^2));
    f=[f1;f2];
elseif d==60%%  T4鍑芥暟-10-10   10缁?
    F1=0;
    for i=1:n-1
        a=x(i)^2;
        F1=F1+a;
    end
    f1=F1+2;
    F2=0;
    for i=1:n
        b=x(i);
        F2=F2+b;
    end
    f2=F2-2;
    f=[f1;f2];    
elseif d==61%%  T4鍑芥暟-10-10   10缁?
    F1=0;
    for i=1:n-1
        a=x(i)^2;
        F1=F1+a;
    end
    f1=F1+2;
    F2=0;
    for i=1:n
        b=x(i);
        F2=F2+b;
    end
    f2=F2-2;
    f=[f1;f2];  
elseif d==62%%  T4鍑芥暟-10-10   10缁?
    F1=0;
    for i=1:n-1
        a=x(i)^2;
        F1=F1+a;
    end
    f1=F1+2;
    F2=0;
    for i=1:n
        b=x(i);
        F2=F2+b;
    end
    f2=F2-2;
    f=[f1;f2];   
elseif d==63%%  MOP2鍑芥-4-4
    f1=0;
    for i=1:n
        a=(x(i)-1/sqrt(n))^2;
        f1=f1+a;
    end
    f1=1-exp(-f1);
    f2=0;
    for i=1:n
        b=(x(i)+1/sqrt(n))^2;
        f2=f2+b;
    end
    f2=1-exp(-f2);
    f=[f1;f2];   
elseif d==64%%  MOP2鍑芥-4-4
    f1=0;
    for i=1:n
        a=(x(i)-1/sqrt(n))^2;
        f1=f1+a;
    end
    f1=1-exp(-f1);
    f2=0;
    for i=1:n
        b=(x(i)+1/sqrt(n))^2;
        f2=f2+b;
    end
    f2=1-exp(-f2);
    f=[f1;f2];  
elseif d==65%%  MOP2鍑芥-4-4
    f1=0;
    for i=1:n
        a=(x(i)-1/sqrt(n))^2;
        f1=f1+a;
    end
    f1=1-exp(-f1);
    f2=0;
    for i=1:n
        b=(x(i)+1/sqrt(n))^2;
        f2=f2+b;
    end
    f2=1-exp(-f2);
    f=[f1;f2];    
 elseif d==66  %TRIDIA -1-1 m=n=20   5     Toi9
    f=[];
    f1=(2*x(1)-1)^2+x(2)^2;
    f=[f;f1];
    for i=2:m-1
        ff=i*(2*x(i-1)-x(i))^2-(i-1)*x(i-1)^2+i*x(i)^2;
        f=[f;ff];
    end
    fm=m*(2*x(m-1)-x(m))^2-(m-1)*x(m-1)^2;
    f=[f;fm];     
elseif d==67  %TRIDIA -1-1 m=n=20   5     Toi9  M=N
    f=[];
    f1=(2*x(1)-1)^2+x(2)^2;
    f=[f;f1];
    for i=2:m-1
        ff=i*(2*x(i-1)-x(i))^2-(i-1)*x(i-1)^2+i*x(i)^2;
        f=[f;ff];
    end
    fm=m*(2*x(m-1)-x(m))^2-(m-1)*x(m-1)^2;
    f=[f;fm];    
elseif d==68 %-2-2 Rosenbrock   9 toi10  M=N-1
    f=[];
    for i=1:m
        fi=100*(x(i+1)-x(i)^2)^2+(x(i+1)-1)^2;
        f=[f;fi];
    end    
elseif d==69 %-2-2 Rosenbrock   9 toi10 M=N-1
    f=[];
    for i=1:m
        fi=100*(x(i+1)-x(i)^2)^2+(x(i+1)-1)^2;
        f=[f;fi];
    end    
elseif d==70 %-2-2 Rosenbrock   9 toi10 M=N-1
    f=[]; 
    for i=1:m
        fi=100*(x(i+1)-x(i)^2)^2+(x(i+1)-1)^2;
        f=[f;fi];
    end
elseif d==71 %MGH16   [-25 -5 -5 -1]到[25 5 5 1]
    f=[];
    for l=1:m
        f1=(x(1)+l/5*x(2)-exp(l/5))^2+(x(3)+x(4)*sin(l/5)-cos(l/5))^2;
        f=[f;f1];
    end    
 elseif d==72  %MGH16   [-25 -5 -5 -1]到[25 5 5 1]
    f=[];
    for l=1:m
        f1=(x(1)+l/5*x(2)-exp(l/5))^2+(x(3)+x(4)*sin(l/5)-cos(l/5))^2;
        f=[f;f1];
    end      
 elseif d==73  %MGH16   [-25 -5 -5 -1]到[25 5 5 1]
    f=[];
    for l=1:m
        f1=(x(1)+l/5*x(2)-exp(l/5))^2+(x(3)+x(4)*sin(l/5)-cos(l/5))^2;
        f=[f;f1];
    end    
elseif d==74 %m=n x0  -1-1   %mgh26   
    f=[];
    a=0;
    for i=1:n
        a=a+cos(x(i));
    end
    for l=1:n
        f1=(4-a+l*(1-cos(x(l)))-sin(x(l)))^2;
        f=[f;f1];
    end  
elseif d==75 %m=n x0  -1-1   %mgh26   
    f=[];
    a=0;
    for i=1:n
        a=a+cos(x(i));
    end
    for l=1:n
        f1=(4-a+l*(1-cos(x(l)))-sin(x(l)))^2;
        f=[f;f1];
    end  
elseif d==76 %m=n x0  -1-1   %mgh26   
    f=[];
    a=0;
    for i=1:n
        a=a+cos(x(i));
    end
    for l=1:n
        f1=(4-a+l*(1-cos(x(l)))-sin(x(l)))^2;
        f=[f;f1];
    end
end

