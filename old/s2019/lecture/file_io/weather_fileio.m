clc; clear;

fid = fopen('waterloo_forecast.txt'); % or fid = fopen('waterloo_forecast.txt', 'r');

weather_info = textscan(fid, '%s %f %s', 'delimiter', ',')

fclose(fid);



dates = weather_info{1}

temperatures = weather_info{2}

description = weather_info{3}