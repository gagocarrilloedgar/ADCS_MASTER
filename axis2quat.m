%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% axis2quat
% Description
% Transform a rotational axis to the associated quaternion
% 
% Inputs
% theta: rotation angle [rad]
% e: axis vector [e1;e2;e3]
%
% Output
% q: associated quaternion [q0;q1;q2;q3]
%
%% CODE


function q = axis2quat(theta)


p0 = cos(theta/2);
p = sin(theta/2);

q =[p0;p];
end