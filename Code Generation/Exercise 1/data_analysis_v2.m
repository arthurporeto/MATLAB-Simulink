function [velocity_searched, consumption_estimated] = data_analysis_v2(velocity, consumption)
%% Extrapolate values
    velocity_searched = linspace(0,200,50);                       
    consumption_estimated = interp1(velocity, consumption, velocity_searched, 'linear', 'extrap');    

end