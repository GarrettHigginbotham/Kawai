% This is a program that will attempt to model a 2-dimensional random walk.
% The particle will be trapped within a finite area, which the user may
% adjust as desired. Furthermore, the particle will begin at a random
% location in the region, and will be allowed four directions of travel. In
% this version, the particle will not have any special instructions for the
% wall. Also, this program simply displays the values of the positions and
% does not provide a visualization.
%
% Author: Garrett Higginbotham
% Email: ghiggie@uab.edu
% Date: March 29, 2016
% Version 1

% User Variables:
% -- region_width
% -- region_height
% -- stop_time

% Initialize Random Number Generator Using Seed 'shuffle'

rng('shuffle');

% Region Parameters

region_width = 1000;
region_height = 1000;

% Set the amount of time.

stop_time = 1000;

% Starting Location

x_0 = randi([0 region_width]);
y_0 = randi([0 region_height]);

% Update Equations -- For now, I will not worry about what happens when the
% particle reaches the boundary.

t = 0; % Starts the counter.

x_t = x_0; % Initializes the step to x_0. This will keep updating.
y_t = y_0; % Initializes the step to y_0. This will keep updating.

while t < stop_time % Stops after stop_time steps.
    
    % Chooses the direction the particle will travel along the lattice. 1
    % correspinds to North, 2 corresponds to West, etc.
    
    dir = randi([1 4]);
    
    % This will display the current values for (x_t, y_t).
    
    disp([x_t y_t]);
    
    % The next two equations update the position of the particle. This
    % section could be made shorter, but I prefer this method. Seems more
    % clear what is going on.
    
    x_tNext = x_t + cos((pi / 2) * dir);
    y_tNext = y_t + sin((pi / 2) * dir);
    
    % This will reset the values of x_t and y_t so that the loop will
    % continue without issues.
    
    x_t = x_tNext;
    y_t = y_tNext;
    
    % Increment t in order to not break your computer.
    
    t = t + 1;
end

