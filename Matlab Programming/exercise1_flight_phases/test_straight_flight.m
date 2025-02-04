%% Test horizontal_flight
clear
Pos = [0;0;0];
Vel = [40;0;0];
time = 30;

newPos = straight_flight(Pos, Vel, time);
solution = [1200;0;0];

diff = max(abs(newPos - solution), [], 'all');
assert( diff <= 1e-1 )