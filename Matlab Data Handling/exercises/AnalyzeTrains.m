%% Load the data of the train connections stored in 'cologne_munich.txt'
file_id = fopen('data_import\cologne_munich.txt','r');

%% Store specific data from the file in local variables
data = textscan(file_id,'%d %s %s %d %d %s %d %d %f %f', 'Delimiter', ',');
index = data{:,1};
train = string(data{:,2});
departure = string(data{:,3});
hh_departure = data{:,4};
ss_departure = data{:,5};
arrival = data{:,6};
hh_arrival = data{:,7};
ss_arrival = data{:,8};
budget_price = data{:,9};
normal_price = data{:,10};


%% Calculate the travel time of each train
hh_departure_decimal = double(hh_departure)+double(ss_departure)/60;
hh_arrival_decimal = double(hh_arrival)+double(ss_arrival)/60;
travel_time = hh_arrival_decimal-hh_departure_decimal;
for i=1:length(train)
    fprintf('The train %s takes %f hours\n',train(i),travel_time(i))
end
%% Subplot 1 - Budget-Price and Normal-Price over Departure Time
figure(1);clf;
subplot(2,1,1);
plot(hh_departure_decimal,normal_price,'r');
hold on
plot(hh_departure_decimal,budget_price,'b');
legend('normal price','budget price');

%% Subplot 2 - Travel Times of each Train

subplot(2,1,2);
bar(train,travel_time,0.3);
yticks(4:0.25:6)
title('Available trains');
ylabel('Travel time[h]')
ylim([4 6]);

