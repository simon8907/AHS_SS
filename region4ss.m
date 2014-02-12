

function []=region4ss(velocityi, velocityi_1, distance)

%Placing the poles at -0.5

cl4poles=[-0.5 -0.5 -0.5];


%State Feedback
K = acker(A,B,cl4poles);
region4=ss((A-B*K),B,C,D);