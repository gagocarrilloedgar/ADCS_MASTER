%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% quat2eul
% Description
% Transform a quaternion to the associated euler angles and rotation
% matrix
%
% Inputs
% q: associated quaternion [q0;q1;q2;q3]
%
% Output
% R: associated rotation matrix [3,3]
% x: first euler angle (x, roll)
% y: second euler angle (y, pitch)
% z: third euler angle (z, yaw)
%
%% CODE


function [x,y,z] = quat2eul(q)

% Allocation
q0 = q(1);
q1 = q(2);
q2 = q(3);
q3 = q(4);

% Pitch
y = asin(2*(q0*q2 - q1*q3));
z_ = 2*atan(q1/10);

if(y == pi/2)
    x = 0;
    z = -z_;
elseif y == - pi/2
    x = 0;
    z =z_;
else
    
    x = atan(2*(q0*q1+q2*q3)/(q0^2 -  q1^2 - q2^2 + q3^2));
    z = atan(2*(q0*q2+q1*q2)/(q0^2 +  q1^2 - q2^2 - q3^2));
    
end

end