function GetNextTrain(departStation,arrivalStation,arrivalDate,arrivalTime)
%NEXTTRAIN Outputs the arrival and departure time of the next train between two certain stations
%   departStation:      string, Name of depearture station
%   arriveStation:      string, Name of arrival station
%   arrivalDate:        string ('yyyy-mm-dd')
%   arrivalTime:        string ('hh:mm')

%% Load arrival data
data = load('api_data_backup/arrivals.mat');
arrivals = data.arrivals;



%% process data
    % Compare the origin of each train until it matches the departStation
for i = 1:length(arrivals)
    train = arrivals(i); % Save information of the certain train 'i' in 'train'

    if strfind(train.origin, departStation) == 1 % Try if departure station matches origin of train 'i'
    % Store necessary output information                             
        trainName       = train.name;                             
        arrivalStation  = train.stopName;
        arrivalDateTime = train.dateTime;
        break
    end   
    end
    
    % Store necessary output information: train name, arrival station and arrival time

    
%% Store train information in NextTrain.txt    
    outputFile = fopen('data_export\NextTrain.txt', 'w'); % Open output file
    
    % Create Header
    flabel = '%s\t %s\t %s\t %s\n';  % Define data format of the header
    fprintf(outputFile, flabel, 'Name', 'Departure', 'Arrival', 'Time'); % Print header
    

    % Write data in file if train was found
    if isnan(trainName) == false
        arrivalTime = arrivalDateTime(12:16); % Extract Time from dateTime in the form 'yyyy-mm-ddThh:mm'
        flabel = '%s\t %s\t %5s\t %s\t %5s\n'; % Define format of the output data
        fprintf(outputFile, flabel, trainName, departStation, arrivalStation, arrivalTime); % Print output data
        
    % Write error report in file if no train was found
    else 
        flabel = '%s\n'; % Define format of the output data
        fprintf(outputFile, flabel, 'No trains available'); % Print error message        
    end
    
    fclose(outputFile); % Close output file



end

