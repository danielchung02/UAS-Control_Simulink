%% Reset
clear all;
close all;
clc;

%% Load Model and Trim Data
load("model_data.mat")

%% Set Initial Condition and Other Simulation Parameters
% Unit Conversion
UNIT_RAD2DEG        =       180 / pi ;                              	% Radian to Degree
UNIT_DEG2RAD        =       1 / UNIT_RAD2DEG ;                       	% Degree to Radian
UNIT_GRAV           =       9.81 ;                                      % Gravity
UNIT_HP2W           =       745.7 ;                                 	% Horse Power to Watt

% Solver Setting
Step_Size           =       0.001 ;                                     % Step_Size for Numerical Integration

% Initial Conditions
Init_Pos            =       [ 0.0, 0.0, -100.0 ] ;                      % Xe, Ye, Ze            (m)
Init_Vel            =       [ x_trim(1), x_trim(2), x_trim(3) ] ;       % U, V, W               (m/s)
Init_Euler          =       [ x_trim(7), x_trim(8), x_trim(9) ] ;       % Phi, Theta, Psi       (rad)
Init_Rate           =       [ x_trim(4), x_trim(5), x_trim(6) ] ;       % P, Q, R               (rad/s}

%% Run Simulation
sim("UAV_Model.slx")