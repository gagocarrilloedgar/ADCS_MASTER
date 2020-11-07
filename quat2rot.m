%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% quat2rot
% Description
% Transform a quaternion to the associated rotation matrix
%
% Inputs
% q: associated quaternion [q0;q1;q2;q3]
%
% Output
% R: associated rotation matrix [3,3]
%
%% CODE


function R = quat2rot(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);

r11 = q0^2 + q1^2 - q2^2 - q3^2;
r12 = 2*q1*q2 - 2*q0*q3; 
r13 = 2*q1*q3 + 2*q0*q2; 

r22 = q0^2 - q1^2 + q2^2 - q3^2;
r21 = 2*q1*q2 + 2*q0*q3; 
r23 = 2*q2*q3 - 2*q0*q1; 

r33 = q0^2 - q1^2 - q2^2 + q3^2;
r31 = 2*q1*q3 - 2*q0*q2; 
r32 = 2*q2*q3 + 2*q0*q1; 

R = [ r11,r12,r13;
      r21,r22,r23;
      r31,r32,r33];
end