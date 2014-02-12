 %From the paper
%k3=-.125;
%k2=-.75;
%k1=-1.5;
lambdav=1;
lambdap=10;
%Length of the previous platoon
Li_1=50;
Tfinal=90;
dt=1;
t = 0:dt:Tfinal;
%Leader Vehicle Dynamics
A=[0 1 0;0 0 1; 0 0 0];
B = [0; 0; 1];
C=eye(3);
D=[0;];

vehicle_sys = ss(A,B,C,D);
%Placing the poles at -0.5
cl4poles=[-0.5 -0.5 -0.5];
%State Feedback
K = acker(A,B,cl4poles);
region4=ss((A-B*K),B,C,D);

%step(region4);
%Random Data
[xi_1_dot,xi_dot,xi_1_init] = AHS_Data(1);
%Calculation of the previous platoon leader's position.
xi_1=xi_1_init+xi_1_dot*t;

%R4 Input
u=-k3*(xi_1_init+xi_1_dot*t) - k2*xi_1_dot + k3*Li_1-k3*lambdap;
lsim(region4,u,t,[0,xi_dot,0]);
