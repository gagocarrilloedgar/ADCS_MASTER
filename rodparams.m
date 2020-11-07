%% ADCS_MASTER
% Author:Gago, Edgar
% Date 07/11/2020
%
%% rodparams
% Description
% Transform a quaternion to the associated rodriguess parameters
%
% Inputs
% q: associated quaternion [q0;q1;q2;q3]
%
% Output
% gp: rodriguess parameters [gp1;gp2;gp3];
% pp: modified rodriguess parameters [pp1;pp2;pp3];
%
%% CODE



function [gp, pp] = rodparams(q)

% Quaternion allocation
p = q(2:4);
p0 = q(1);

% Rodrigues parameter
gp = p / p0;

% Modified rodrigues parameter
pp = p/(1+p);

end