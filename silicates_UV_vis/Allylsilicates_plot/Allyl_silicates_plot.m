%% import data
data = readtable("mbg_3_127_is.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:10));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6 125.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>280));
max_wl = wavelengths(max_wl_id);
fig = figure;

x0=10;
y0=10;
width=1100;
height=800
set(fig,'position',[x0,y0,width,height])
subplot(3,3,1)
plot(wavelengths, e, 'red', LineWidth=3);
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);
title('nitro, \textbf{8}', 'Interpreter','latex', 'FontSize',20)
xlim([210 500])


%% import data
data = readtable("mbg_3_138_allylcatecholsilicate.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:10));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6 125.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>280));
max_wl = wavelengths(max_wl_id);

subplot(3,3,7)

plot(wavelengths, e, LineWidth=3);
title('unsubstituted, \textbf{15}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])


%% import data
data = readtable("is_2_3_allyl_methoxysilicate.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:10));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6 125.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>270));
max_wl = wavelengths(max_wl_id);

subplot(3,3,2)

plot(wavelengths, e, LineWidth=3);
title('methoxy, \textbf{9}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])


hold on
%% import data
data = readtable("mbg_3_146_allylmethylcoumarine.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:8));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>280));
max_wl = wavelengths(max_wl_id);

subplot(3,3,8)
plot(wavelengths, e, LineWidth=3);
title('methylcoumarin, \textbf{21}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])


hold on
%% import data
data = readtable("is_2_7_allyl_fluoro.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:8));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>250));
max_wl = wavelengths(max_wl_id);

subplot(3,3,3)

plot(wavelengths, e, LineWidth=3);
title('fluoro, \textbf{10}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])


%% import data
data = readtable("is_2_11_allyl_phenylcoumarine.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:8));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);

[~,max_wl_id] = max(e(wavelengths>300));
max_wl = wavelengths(max_wl_id);

subplot(3,3,9)

plot(wavelengths, e, LineWidth=3);
title('phenylcoumarin, \textbf{22}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])


%% import data
data = readtable("is_2_9_allyl_methylcatechol.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:8));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>250));
max_wl = wavelengths(max_wl_id);
subplot(3,3,6)

plot(wavelengths, e, LineWidth=3);
title('methyl, \textbf{13}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])

%% import data
data = readtable("is_2_8_allyl_acetate.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:8));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>250));
max_wl = wavelengths(max_wl_id);

subplot(3,3,5)

plot(wavelengths, e, LineWidth=3);
title('CH2CO2Me, \textbf{12}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])



%% import data
data = readtable("is_2_5_allyl_nitrile.csv");

% data modification
wavelengths = table2array(data(1:1203, 1));
a= table2array(data(1:1203, 2:2:8));
c= [7.0e-6 15.0e-6 31.0e-6 62.0e-6];

% compute extinction coefficients
epsilon= a*c'*inv(c*c');
% same but with pseudoinverse
e = a*pinv(c);
[~,max_wl_id] = max(e(wavelengths>250));
max_wl = wavelengths(max_wl_id);

subplot(3,3,4)

plot(wavelengths, e, LineWidth=3);
title('nitrile, \textbf{11}','Interpreter','latex', 'FontSize',20)
xline(max_wl, '-', {round(max_wl,3, 'significant')}, 'Interpreter', 'latex', 'LabelOrientation', 'horizontal', 'FontSize', 20, LineWidth=2);

xlim([210 500])

%% Common labels
% Give common xlabel, ylabel and title to your figure
han=axes(fig,'visible','off'); 
han.Title.Visible='on';
han.XLabel.Visible='on';
han.YLabel.Visible='on';
xlabel(han,'wavelength [nm]','Interpreter','latex', 'FontSize',20)
ylabel(han,'molar absorptivity $[M^{-1}cm^{-1}]$', 'Interpreter','latex', 'FontSize',20)

%title(han, sprintf('Absorption of substituted allyl bis(catecholato)silicates \n'),'Interpreter','latex', 'FontSize',28)
%legend('nitro', 'catechol','methoxy', 'methylcoumarin', 'fluorine', 'phenylcoumarin', 'methyl', 'acetate','nitrile','Fontsize', 12)