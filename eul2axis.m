%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% eul2axis
% Description
% Transform a rotation matrix to its associated euler axis
%
% Inputs
% R: associated rotation matrix [3,3]
%
% Output
% theta_v: fassociated vector angles [x,y,z]
% e: axis vector [e1;e2;e3]
%
%% CODE


function [e,theta_v] = eul2axis(R)

% Init for a cleaner code
r11 = R(1,1); r12 = R(1,2); r13 = R(1,3);
r21 = R(2,1); r22 = R(2,2); r23 = R(2,3);
r31 = R(3,1); r32 = R(3,2); r33 = R(3,3);

theta = acos((r11 + r22 + r33-1)/2);
theta_ = 2*pi - theta;
theta_v = [theta, theta_];
 
c = 2*sin(theta);
e1 = (r32-r23)/c;
e2 = (r13-r31)/c;
e3 = (r21-r12)/c;

e = [e1 e2 e3];
e = e/norm(e);

end