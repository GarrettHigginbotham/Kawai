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

x = randi([0 max_coordinate]);
y = randi([0 max_coordinate]);
z = randi([0 max_coordinate]);

% Display the initial coordinates.

disp([x y z]);

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
        
        % Update the timer.
        
        steps = steps + 1;
        
        % Display the current value of the coordinates.

        disp([x y z]);
        
    else
        
        % This piece of code will change the z coodinates of the particle.
        
        % Update the position of the particle.
        
        z = z + velocity * cos(pi * (dir - 5));
        
        % Update the timer.
        
        steps = steps + 1;
        
        % Display the current value of the coordinates.

        disp([x y z]);
        
    end
    
end

disp(steps);
