% This is a program that will attempt to model a 2-dimensional random walk.
% The particle will be trapped within a finite area, which the user may
% adjust as desired. Furthermore, the particle will begin at a random
% location in the region, and will be allowed four directions of travel.
% The program includes special instructions to handle when the particle
% reaches the boundaries of the region. Finally, this version will provide
% a visualization of the path of the particle as a function of time, unlike
% the previous versions which simply displayed the coordinates of the
% particle.
%
% Author: Garrett Higginbotham
% Email: ghiggie@uab.edu
% Date: March 30, 2016
% Version 3

% User Variables:
% -- region_width
% -- region_height
% -- stop_time

% Clean the MATLAB interface

format long;

clear all;
close all;

% Initialize Random Number Generator Using Seed 'shuffle'

rng('shuffle');

% Region Parameters

region_width = 1000;
region_height = 1000;

% Set the amount of time.

stop_time = 300000;

% Starting Location

x_0 = randi([0 region_width]);
y_0 = randi([0 region_height]);

% Set up vectors that record the coordinates of the points.

u = zeros(1, stop_time); % This vector will record the x coordinates.
w = zeros(1, stop_time); % This vector will record the y coordinates.

% Update Equations -- For now, I will not worry about what happens when the
% particle reaches the boundary.

t = 0; % Starts the counter.

x_t = x_0; % Initializes the step to x_0. This will keep updating.
y_t = y_0; % Initializes the step to y_0. This will keep updating.

while t < stop_time
    
    if x_t == 0 && y_t == 0

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;

        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [1 4];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    elseif x_t == region_width && y_t == 0

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;
        
        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [1 2];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    elseif x_t == region_width && y_t == region_height

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;

        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [2 3];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    elseif x_t == 0 && y_t == region_height

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;

        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [3 4];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    elseif x_t == 0

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;

        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [1 3 4];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    elseif y_t == 0

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;
        
        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [1 2 4];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    elseif x_t == region_width

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;

        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [1 2 3];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    elseif y_t == region_height

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;

        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [2 3 4];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;

    else

        % This will display the current values for (x_t, y_t).

        disp([x_t y_t]);
        
        % Pushes the coordinates into u and w.
        
        u(t + 1) = x_t;
        w(t + 1) = y_t;

        % This builds a list of the possible directions for the particle. This
        % will be restricted due to the walls of the region.

        dir_list = [1 2 3 4];

        % The next line will choose a single random number from dir_list. This
        % number will become the direction of the particle.

        dir = randsample(dir_list, 1);

        % This will use the selection from the previous line to update the
        % position of the particle.

        x_tNext = x_t + cos((pi / 2) * dir);
        y_tNext = y_t + sin((pi / 2) * dir);

        % This will reset the values of x_t and y_t so that the code will run
        % without issues.

        x_t = x_tNext;
        y_t = y_tNext;

        % This will update the time step so that your computer doesn't break.

        t = t + 1;
    
    end
end

figure
plot(u, w, '.');
axis equal;
axis([0 region_width 0 region_height]);

disp(max(u));
disp(max(w));

disp(min(u));
disp(min(w));