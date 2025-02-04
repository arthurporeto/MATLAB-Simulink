function [newPos] = straight_flight(Pos, Vel, time)
%HORIZONTAL_FLIGHT Calculates the position after flying horizontal and straight with a constant speed
%   Pos:    3x1, Position at the beginning of the section
%   Vel:    3x1, Cruise velocity vector
%   time:   1x1, Time flying in this section
%   newPos: 3x1, Position at the end of this section

%% Calculate horizontal flight distance
newPos = Pos + Vel*time;
% Insert your code here

end

