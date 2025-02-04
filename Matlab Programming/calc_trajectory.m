function [Pos] = calc_trajectory(Pos, Vel, Time, Radius)
%MAIN_FUNCTION Plots the trajectory
%   Pos:    3x1, Input, position at the beginning of the flight
%   Pos:    3xm, Output, positions during the flight
%   Vel:    3xn, Cruise velocity matrix, each column represents the speed vector of one section
%   Time:   1xn, Contains the cruise time of each segment
%   Radius: 1xn, Contains the radius of each segment; if value is zero, no turn was flown
tic

%% 2.1 - Add the paths of the function files

% Add path here

%% 2.2 - Calculate plane positions by using the functions

% Integrate straight flight here


% Integrate turn flight here


%% 2.3 - Plot Trajectory with an Anonymous Function

% Define anonymous function here

trajectory(Pos)   % Calls the anonymous function

%% For better Visualization
daspect([3 3 1])        % Sets axis ratio of the plot
grid on
toc
end
         
        