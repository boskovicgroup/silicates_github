%% 
clear, clc, clf
% all allylnitrocatechols
[t_250_200,int_250_200,~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_250mM_allylnitrosilicate_200mM_timesweep');
[t_250_100,int_250_100,~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_250mM_allylnitrosilicate_100mM_timesweep');
[t_100_200,int_100_200,~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_100mM_allylnitrosilicate_200mM_timesweep');
[t_100_50,int_100_50,~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_100mM_allylnitrosilicate_50mM_timesweep');
[t_100_100,int_100_100,~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_100mM_allylnitrosilicate_100mM_timesweep');
[t_50_100, int_50_100, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_50mM_allylnitrosilicate_100mM_timesweep');
[t_50_50, int_50_50, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_50mM_allylnitrosilicate_50mM_timesweep');
[t_50_10, int_50_10, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_concentration_variation/POBN_50mM_allylnitrosilicate_10mM_timesweep');


[t_methoxycatechol,int_methoxycatechol,Params] = eprload('silicates_EPR_time_course/Allyl_methoxysilicate/POBN_250mM_allylmethoxysilicate_100mM_timesweep.DTA');

% all catechols at different combinations of concentrations
[cat_t_50_10, cat_int_50_10, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_concentration_variation/POBN_50mM_allylcatecholsilicate_10mM');
[cat_t_50_50, cat_int_50_50, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_concentration_variation/POBN_50mM_allylcatecholsilicate_50mM');
[cat_t_50_100, cat_int_50_100, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_concentration_variation/POBN_50mM_allylcatecholsilicate_100mM');
[cat_t_100_10, cat_int_100_10, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_concentration_variation/POBN_100mM_allylcatecholsilicate_10mM');
[cat_t_100_50, cat_int_100_50, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_concentration_variation/POBN_100mM_allylcatecholsilicate_50mM');
[cat_t_100_100, cat_int_100_100, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_concentration_variation/POBN_100mM_allylcatecholsilicate_100mM');
[cat_t_250_100, cat_int_250_100, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_concentration_variation/POBN_250mM_allylcatechosilicate_100mM_timesweep');







% write the matrices and files
methoxycatechol = [t_methoxycatechol, int_methoxycatechol];
writematrix(methoxycatechol, 'methoxycatechol_time.txt', 'Delimiter', 'comma');

nitro100_100 = [t_100_100 int_100_100];
writematrix(nitro100_100, 'nitro100_100.txt', 'Delimiter', 'comma');

nitro250_100 = [t_250_100 int_250_100];
writematrix(nitro250_100, 'nitro250_100.txt', 'Delimiter', 'comma');

nitro250_200 = [t_250_200 int_250_200];
writematrix(nitro250_200, 'nitro250_200.txt', 'Delimiter', 'comma');

nitro100_200 = [t_100_200 int_100_200];
writematrix(nitro100_200, 'nitro100_200.txt', 'Delimiter', 'comma');

nitro100_50 = [t_100_50 int_100_50];
writematrix(nitro100_50, 'nitro100_50.txt', 'Delimiter', 'comma');

nitro50_100 = [t_50_100 int_50_100];
writematrix(nitro50_100, 'nitro50_100.txt', 'Delimiter', 'comma');

nitro50_50 = [t_50_50 int_50_50];
writematrix(nitro50_50, 'nitro50_50.txt', 'Delimiter', 'comma');

nitro50_10 = [t_50_10 int_50_10];
writematrix(nitro50_10, 'nitro50_10.txt', 'Delimiter', 'comma');

cat50_10 = [cat_t_50_10 cat_int_50_10];
writematrix(cat50_10, 'cat50_10.txt', 'Delimiter', 'comma');

cat50_50 = [cat_t_50_50, cat_int_50_50];
writematrix(cat50_50, 'cat50_50.txt', 'Delimiter', 'comma');

cat50_100 = [cat_t_50_100, cat_int_50_100];
writematrix(cat50_100, 'cat50_100.txt', 'Delimiter', 'comma');

cat100_10 = [cat_t_100_10, cat_int_100_10];
writematrix(cat100_10, 'cat100_10.txt', 'Delimiter', 'comma');

cat100_50 = [cat_t_100_50, cat_int_100_50];
writematrix(cat100_50, 'cat100_50.txt', 'Delimiter', 'comma');

cat100_100 = [cat_t_100_100, cat_int_100_100];
writematrix(cat100_100, 'cat100_100.txt', 'Delimiter', 'comma');

cat250_100 = [cat_t_250_100, cat_int_250_100];
writematrix(cat250_100, 'cat250_100.txt', 'Delimiter', 'comma');



%% Load data of catechol
file = importdata('cat100_100.txt');
time_pts = file(:,1);
intensities = file(:,2);

%% Analyze 
% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 16;
filtered = filterNoise(intensities, num_coeffs);
% plot(time_pts, filtered, 'LineWidth',2,'Color','k');
% hold on
% scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
% hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);

%% plot catechol
subplot(3,2,6)
plot(time_pts, filtered, 'LineWidth',2,'Color','k');
ax = gca;
ylims = ax.YLim;
hold on
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);
ylim(ylims);
hold off
%% Analysis of methoxycatechol_time.txt
file = importdata('methoxycatechol_time.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 16;
filtered = filterNoise(intensities, num_coeffs);
plot(time_pts, filtered, 'LineWidth',2,'Color','k');
hold on
scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
hold off

%% Analysis of nitrocatechol_time.txt
file = importdata('nitro250_100.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 16;
filtered = filterNoise(intensities, num_coeffs);
plot(time_pts, filtered, 'LineWidth',2,'Color','k');
hold on
scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);

plot(time_pts, filtered, 'LineWidth',2,'Color','k');
ax = gca;
ylims = ax.YLim;
hold on
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);
ylim(ylims);
hold off

%% Analysis of catechols
file = importdata('methoxycatechol_time.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 16;
filtered = filterNoise(intensities, num_coeffs);
plot(time_pts, filtered, 'LineWidth',2,'Color','k');
hold on
scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
hold off

%% Analysis of nitrocatechol_time.txt
file = importdata('nitro100_100.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 16;
filtered = filterNoise(intensities, num_coeffs);
plot(time_pts, filtered, 'LineWidth',2,'Color','k');
hold on
scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);

plot(time_pts, filtered, 'LineWidth',2,'Color','k');
ax = gca;
ylims = ax.YLim;
hold on
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);
ylim(ylims);
hold off

%% power dependence for nitrocatechol
[t_nitro_500W, int_nitro_500W, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_power_variation/POBN_250mM_allylnitrosilicate_100mM_timesweep_500W');
[t_nitro_100W, int_nitro_100W, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_power_variation/POBN_250mM_allylnitrosilicate_100mM_timesweep_100W');
[t_nitro_300W, int_nitro_300W, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_power_variation/POBN_250mM_allylnitrosilicate_100mM_timesweep');

nitro500W = [t_nitro_500W int_nitro_500W];
writematrix(nitro500W, 'nitro500W.txt', 'Delimiter', 'comma');

nitro300W = [t_nitro_300W int_nitro_300W];
writematrix(nitro300W, 'nitro300W.txt', 'Delimiter', 'comma');

nitro100W = [t_nitro_100W int_nitro_100W];
writematrix(nitro100W, 'nitro100W.txt', 'Delimiter', 'comma');

file = importdata('nitro100W.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 14;
filtered = filterNoise(intensities, num_coeffs);
plot(time_pts, filtered, 'LineWidth',2,'Color','k');
hold on
scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);

plot(time_pts, filtered, 'LineWidth',2,'Color','k');
ax = gca;
ylims = ax.YLim;
hold on
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);
ylim(ylims);
hold off



%% power dependence for catechol
clear cls clf
[t_cat_500W, int_cat_500W, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_power_variation/POBN_250mM_allylcatecholsilicate_100mM_500W');
[t_cat_100W, int_cat_100W, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_power_variation/POBN_250mM_allylcatecholsilicate_100mM_100W');
[t_cat_300W, int_cat_300W, ~] = eprload('silicates_EPR_time_course/Allyl_catecholsilicate_power_variation/POBN_250mM_allylcatechosilicate_100mM_timesweep');

int_cat_500W = int_cat_500W - min(int_cat_500W);
int_cat_300W = int_cat_300W - min(int_cat_300W);
int_cat_100W = int_cat_100W - min(int_cat_100W);


cat500W = [t_cat_500W int_cat_500W];
writematrix(cat500W, 'cat500W.txt', 'Delimiter', 'comma');

cat300W = [t_cat_300W int_cat_300W];
writematrix(cat300W, 'cat300W.txt', 'Delimiter', 'comma');

cat100W = [t_cat_100W int_cat_100W];
writematrix(cat100W, 'cat100W.txt', 'Delimiter', 'comma');

file = importdata('cat500W.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 12;
filtered = filterNoise(intensities, num_coeffs);
% plot(time_pts, filtered, 'LineWidth',2,'Color','k');
% hold on
% scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
% hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);

plot(time_pts, filtered, 'LineWidth',2,'Color','k');
ax = gca;
ylims = ax.YLim;
xlims = ax.XLim;
hold on
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);
ylim(ylims)

% 300 W
file = importdata('cat300W.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 16;
filtered = filterNoise(intensities, num_coeffs);
% plot(time_pts, filtered, 'LineWidth',2,'Color','k');
% hold on
% scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
% hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);
hold on
plot(time_pts, filtered, 'LineWidth',2);
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);
xlim(xlims)

% 100 W

file = importdata('cat100W.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 10;
filtered = filterNoise(intensities, num_coeffs);
% plot(time_pts, filtered, 'LineWidth',2,'Color','k');
% hold on
% scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
% hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);
hold on
plot(time_pts, filtered, 'LineWidth',2);
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);
legend('500 W', '500 W initial rate', '300 W', '300 W initial rate', '100 W', '100 W initial rate')
xlabel('time / s', 'Interpreter', 'latex', 'FontSize',20)
ylabel('EPR signal / arbitrary units','Interpreter', 'latex', 'FontSize',20)
title('Bis(catecholato)silicate rate of radical trapping', 'Interpreter', 'latex', 'FontSize',24)
hold off

%% power dependence for nitrocatechol
clear clc clf

[t_cat_500W, int_cat_500W, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_power_variation/POBN_250mM_allylnitrosilicate_100mM_timesweep_500W');
[t_cat_100W, int_cat_100W, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_power_variation/POBN_250mM_allylnitrosilicate_100mM_timesweep_100W');
[t_cat_300W, int_cat_300W, ~] = eprload('silicates_EPR_time_course/Allyl_nitrosilicate_power_variation/POBN_250mM_allylnitrosilicate_100mM_timesweep');
int_cat_500W = int_cat_500W - min(int_cat_500W);
int_cat_300W = int_cat_300W - min(int_cat_300W);
int_cat_100W = int_cat_100W - min(int_cat_100W);

cat500W = [t_cat_500W int_cat_500W];
writematrix(cat500W, 'cat500W.txt', 'Delimiter', 'comma');

cat300W = [t_cat_300W int_cat_300W];
writematrix(cat300W, 'cat300W.txt', 'Delimiter', 'comma');

cat100W = [t_cat_100W int_cat_100W];
writematrix(cat100W, 'cat100W.txt', 'Delimiter', 'comma');

file = importdata('cat500W.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 10;
filtered = filterNoise(intensities, num_coeffs);
% plot(time_pts, filtered, 'LineWidth',2,'Color','k');
% hold on
% scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
% hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);

plot(time_pts, filtered, 'LineWidth',2,'Color','k');
ax = gca;
ylims = ax.YLim
xlims = ax.XLim

hold on
plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);


% 300 W
file = importdata('cat300W.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 12;
filtered = filterNoise(intensities, num_coeffs);
% plot(time_pts, filtered, 'LineWidth',2,'Color','k');
% hold on
% scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
% hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);
plot(time_pts, filtered, 'LineWidth',2);


plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);


% 100 W

file = importdata('cat100W.txt');
time_pts = file(:,1);
intensities = file(:,2);

% Set number of Fourier coefficients to retain and denoise the data.
num_coeffs = 12;
filtered = filterNoise(intensities, num_coeffs);
% plot(time_pts, filtered, 'LineWidth',2,'Color','k');
% hold on
% scatter(time_pts, intensities,'MarkerEdgeColor','k','MarkerEdgeAlpha', 0.2);
% hold off

% Find where the 2nd derivative of the intensities changes sign.
% Equivalently, where the rate obtains its maximum value towards the beginning
% of the data.
start_idx = find(diff(filtered, 2) < 0,1);

% Compute initial rate.
stoichCoeff = 1;
rxn_percentage = 10;
[initialRate, pts_used] = compInitialRate(stoichCoeff, time_pts(start_idx:end)-time_pts(start_idx), filtered(start_idx:end), rxn_percentage);

plot(time_pts, filtered, 'LineWidth',2);

plot(time_pts, filtered(start_idx)+(time_pts - time_pts(start_idx))*initialRate, 'LineWidth',2);

legend('500 W', '500 W initial rate', '300 W', '300 W initial rate', '100 W', '100 W initial rate')
xlabel('time / s', 'Interpreter', 'latex', 'FontSize',20)
ylabel('EPR signal / arbitrary units','Interpreter', 'latex', 'FontSize',20)
title('Bis(nitrocatecholato)silicate rate of radical trapping', 'Interpreter', 'latex', 'FontSize',24)
ylim([0 0.2])
xlim(xlims)
hold off
