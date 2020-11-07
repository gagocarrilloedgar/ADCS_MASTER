%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% quatrotation
% Description
% Rotates a vector using a quaternion rotation
%
% Inputs
% q: associated quaternion [q0;q1;q2;q3]
% v: vector to rotate [v1;v2;v3]
%
% Output
% v_: rotated vector [0;v1_;v2_;v3_]
%
%% CODE



function  v_ = quatrotation(v,q)

N = 3; % Vector size

% Evaluation in order to avoid problems with multiplications
if numel(v) ~= N
    v = v';
end

% Evalutaion whether we will use a q to rotation or an angle

p0 = q(1);
p = q(2:4);

vp1 = cross(p,v);
vp2 = cross(p,vp1);
v_ = [  0; v + 2*p0*vp1 + 2*vp2];

end