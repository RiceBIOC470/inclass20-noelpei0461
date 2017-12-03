%Inclass 20
%GB comments
All of your plots are incorrectly implemented. An error occurs for all of them. This was crucial part of the exercise. You need to take your ouput data from the fit function and plot that data. Syntax should follow as 
plot(fit_out,x',y')
1 80
2 80
3 80
4. 80
Overall 80


%In this folder you will find a .mat file with x and y data

% For all of the questions below, use any options as necessary to get a
% good fit - starting points, lower bounds etc. 

% 1. Define a custom model and try to fit the data to a Michaelis function 
% y = V*x/(K+x). 
file = load('data.mat');
x = file.xx;
y = file.yy;

fit1 = 'V*x/(K+x)';
model = fittype(fit1);
[fit_out,fit_metric] = fit(x',y',model);
figure
scatter(x,y)
hold on
plot(x',fit_metric)
% 2. Use a custom model to try to fit the data to a Hill function with
% exponent 2: y = V*x^2/(K^2+x^2)
file = load('data.mat');
x = file.xx;
y = file.yy;

fit2 = 'V*x^2/(K^2+x^2)';
model2 = fittype(fit2);
[fit_out,fit_metric] = fit(x',y',model2);
figure
scatter(x,y)
hold on
plot(x',fit_metric)

% 3. Now treat the exponent as a free parameter and perform the fit again,
% that is fit to the model y = V*x^n/(K^n+x^n)
file = load('data.mat');
x = file.xx;
y = file.yy;

fit3 = 'V*x^n/(K^2+x^2)';
model3 = fittype(fit3);
[fit_out,fit_metric] = fit(x',y',model3);
figure
scatter(x,y)
hold on
plot(x',fit_metric)

% 4. Redo parts 1 and 2, but using your model from 3 and fixing the value of
% n to either 1 or 2.
%n=1
model4 = fittype(fit3,'problem',n);
[fit_out,fit_metric] = fit(x',y',model4,'problem',1);
figure
scatter(x,y)
hold on
plot(x',fit_metric)
%n=2
model4 = fittype(fit3,'problem',n);
[fit_out,fit_metric] = fit(x',y',model4,'problem',2);
figure
scatter(x,y)
hold on
plot(x',fit_metric)

