function [newPos] = turn_flight(Pos, Vel, radius, time)
%TURN_FLIGHT Calculates 100 positions within a horizontal left-turn with constant speed and radius
%   Pos:    3x1, Position at the beginning of the section
%   Vel:    3x1, Cruise velocity vector
%   radius: 1x1, Radius of the turn
%   time:   1x1, Time flying in this section
%   newPos: 3x101, Positions at the end of this section

%% Calculate overall turn angle



%% Define the angle and flight-time per "1/100"-step



%% Calculate flight distance per "1/100" step by using the "Euler-Method"
% Hint: Rotate the velocity vector vector "V" by using the predifined local function



end

%% Predefined Local Function
function Vel_rot = rotateVector(Vel, turn_angle)
%ROTATEVECTOR Rotates the 2x1 vector "Vel" by an angle of "turn_angle" degrees
    Vel_rot = [Vel(1)*cos(turn_angle) - Vel(2)*sin(turn_angle); Vel(1)*sin(turn_angle) + Vel(2)*cos(turn_angle)];
end