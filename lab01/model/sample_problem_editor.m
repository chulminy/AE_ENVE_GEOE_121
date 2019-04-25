%% Sample Problem
% Author: Chul Min Yeum
% Date: 04/25/2019

%% Problem Definition
%{

Two commonly used scales for measuring temperature are Fahrenheit and
Celsius. In this problem, your will convert temperature in degrees
Fahrenheit to degrees Celsius. Recall that Fahrenheit (tf) and Celsius
(tc) are related by the following equation:

tc = (tf-32)/1.8
tf = (tc*1.8) + 32

see this link: https://commons.wikimedia.org/wiki/File:Thermometer_CF.svg
%}

%% Your Code
temp_f = 30; % temperature in Fahrenheit degree
temp_c = (temp_f-32)/1.8;

temp_c
temp_f = (temp_c * 1.8) + 32; % temperarue in Celcius degree

temp_f