% This is a program that will attempt to model a 3D random walk. The model
% will be modeled as being in an infinite space, and this space will be cut
% off at the plane z = 0. Once the particle contacts the plane, the program
% will terminate. Initially, the velocity of the particle will be constant
% and the particle will only move along the lattice. The user will be able
% to define such values as the particle's mass and the velocity of the
% particle. We can, without loss of generality assume that the particle
% begins in the positive z direction. All other coordinate systems can be
% recast to match this situation.
%
% Author: Garrett Higginbotham
% Email: ghiggie@uab.edu
% Date: April 13, 2016

% Clean the MATLAB Interface

clear all;
close all;

% User Inputs

velocity = input('How fast (m/s) should the particle be moving? ');
mass = input('How heavy (kg) should the particle be? ');

% Initialize Random Number Generator using Seed 'Shuffle'

rng('shuffle');

% Set the initial range of coordinates for the particle.

max_coordinate = 100;

% Set the initial coordinates for the particle.

x_0 = randi([0 max_coordinate]);
y_0 = randi([0 max_coordinate]);
z_0 = randi([0 max_coordinate]);

% Set up vectors that record the coordinates of the points.

u = zeros(1, 1); % This vector will record the x coordinates.
v = zeros(1, 1); % This vector will record the y coordinates.
w = zeros(1, 1); % This vector will record the z coordinates.

% Set the initial elements of u, v, and w.

u(1) = x_0;
v(1) = y_0;
w(1) = z_0;

% Display the initial coordinates.

disp([x_0 y_0 z_0]);

% Push the initial coordinates into generic variable names.

x = x_0;
y = y_0;
z = z_0;

% Set the list of possible directions.

dir_list = [1 2 3 4 5 6];

% Start a timer.

steps = 0;

% Begin updating the position of the particle.

while z > 0
    
    % Get a random number from dir_list.
    
    dir = randsample(dir_list, 1);
    
    if dir <= 4
        
        % This piece of code will change the x and y coordinates of the
        % particle.
        
        % Update the position of the particle.
        
        x = x + velocity * cos((pi / 2) * dir);
        y = y + velocity * sin((pi / 2) * dir);
        
        % Update u, v, and w.
        
        u = [u x];
        v = [v y];
        w = [w z];
        
        % Update the timer.
        
        steps = steps + 1;
        
        % Display the current value of the coordinates.

        disp([x y z]);
        
    else
        
        % This piece of code will change the z coodinates of the particle.
        
        % Update the position of the particle.
        
        z = z + velocity * cos(pi * (dir - 5));
        
        % Update u, v, and w.
        
        u = [u x];
        v = [v y];
        w = [w z];
        
        % Update the timer.
        
        steps = steps + 1;
        
        % Display the current value of the coordinates.

        disp([x y z]);
        
    end
    
end

disp([x_0 y_0 z_0]);
disp(steps);

% The following code will illustrate the random walk process created above.

figure
hold on % This line will keep MATLAB from opening multiple windows
%axis([0 region_width 0 region_height])
for k = 1:length(u)
    p = plot3(u(k), v(k), w(k), 'o', 'MarkerFaceColor', 'black'); % This will plot
    % the most recent point as black, which will allow us to track the
    % position or the particle over time.
    drawnow % Forces MATLAB to draw the object described in the previous
    % line.
    p.MarkerFaceColor = 'yellow'; % Changes the colour of the point to
    % yellow. It will allow us to see the current position of the particle
    % relative to all the previous positions of the particle.
    drawnow
end
hold off
