%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% quat2eul
% Description
% Transform a quaternion to the associated rotation axis
%
% Inputs
% q: associated quaternion [q0;q1;q2;q3]
%
% Output
% theta: first euler angle (x, roll)
% e: axis vector [e1;e2;e3]
%
%% CODE


function [e,theta] = quat2axis(q)

q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);

theta = 2*acos(q0);

c = sin(theta/2);

if(theta ==0)
    
    e = [1;0;0];    
else
    x = q1/c;
    y = q2/c;
    z = q3/c;
    e = [x;y;z];
end

end