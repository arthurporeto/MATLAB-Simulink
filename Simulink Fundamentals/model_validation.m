% Load the simulation results
t = out.simout.Time;       % Time vector
Ia = out.simout.Data;      % Armature current data

% Find the peak value of Ia
peak_Ia = max(Ia); 

% Compute 63% of peak value
threshold = 0.63 * peak_Ia; 

% Find the first time when Ia reaches 63% of peak
idx = find(Ia >= threshold, 1, 'first'); 
time_tau = t(idx); 

% Plot the current response
figure;
plot(t, Ia, 'LineWidth', 1.5); hold on;
yline(threshold, 'r--', '63% of Peak'); % Mark threshold
xline(time_tau, 'b--', sprintf('\\tau = %.3f s', time_tau)); % Mark tau
scatter(time_tau, threshold, 100, 'r', 'filled'); % Mark point
xlabel('Time (s)');
ylabel('Armature Current I_A (A)');
title('Time Constant Estimation');
grid on;
legend('I_A Response', '63% of Peak', '\tau Approximation', 'Location', 'best');
hold off;
