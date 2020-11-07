%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% eul2axis
% Description
% Transform euler angles to the associated quaternion
%
% Inputs
% roll: first euler angle (x, roll,theta)
% pitch: second euler angle (y, pitch,phi)
% yaw: third euler angle (z, yaw,psi)
%
% Output
% q: associated quaternion [q0;q1;q2;q3]
%
%% CODE

function q = eul2quat(yaw, pitch, roll)

z = yaw /2;
y = pitch/2;
x = roll/2;

q0 = cos(x)*cos(y)*cos(z) + sin(x)*sin(y)*sin(z);
q1 = sin(x)*cos(y)*cos(z) - cos(x)*sin(y)*sin(z);
q2 = cos(x)*sin(y)*cos(z) + sin(x)*cos(y)*sin(z);
q3 = cos(x)*cos(y)*sin(z) - sin(x)*sin(y)*cos(z);

q = [q0;q1;q2;q3];

end