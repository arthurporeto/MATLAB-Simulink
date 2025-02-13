function [velocity_searched, consumption_estimated] = data_analysis()
%% Load Measurement Data  
    file_id    = fopen('fuel_consumption.txt', 'r');                           
    data       = textscan(file_id, '%f%f', 'delimiter', ',');   
    
    velocity = data{1,1};
    consumption = data{1,2};

%% Extrapolate values
    velocity_searched = linspace(0,200,50);                       
    consumption_estimated = interp1(velocity, consumption, velocity_searched, 'linear', 'extrap');
    
%% Plot Extrapolated Values
    p = plot(velocity, consumption, 'rx');
    set(p, 'MarkerSize', 10);
    hold on
    plot(velocity_searched, consumption_estimated, 'b--')
    
    xlabel('Velocity [km/h]')
    ylabel('Consumption [l/100 km]')
    legend('Data', 'Extrapolation')

end