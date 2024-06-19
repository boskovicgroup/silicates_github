%% TEMPO Exp 10
clear, clf, clc
[B,spc,Params] = eprload('exp10_tempo_100uM');
plot(B,spc)

Sys0.g = 2.01;
Sys0.lwpp = 0.2;% mT
Sys0.Nucs='14N';
Sys0.A=50;

Exp.mwFreq = 9.858511;  % GHz
Exp.Range=[342.2 362.2];  % mT
Exp.nPoints = 2000;


SysVary.lwpp = 0.3;  % mT
SysVary.g = 0.1;

SysVary.A=mt2mhz(0.3);

%garlic(Sys0,Exp)
esfit(spc,@garlic,{Sys0,Exp},{SysVary});

%% BPO and PBN Exp 7
% load the data
clear, clf, clc
[B,spc_series,Params2] = eprload('../exp7_pbn_benzoyl_light_2D_field_delay_5min');
mag_field = cell2mat(B(1))';
spc=spc_series(:,10); % fit the last time point

% define the experiment by consulting the Params
Exp.mwFreq = 9.858944;  % GHz
Exp.Range=[342.2 362.2];  % mT
Exp.nPoints = 2000;



Nx1.g = [2.009];
Nx1.lwpp = [0 0.1];% mT
Nx1.Nucs='N';
Nx1.A=[39];
Nx1.weight=0.5;

Nx2.g = [2.006];
Nx2.lwpp = [0 0.1];% mT
Nx2.Nucs='N, 1H';
Nx2.A=[42 9];
Nx2.weight=0.5;


Vary1.lwpp = 0.1;  % mT
Vary1.g = [0.1];
Vary1.A=[10];
Vary1.weight=0.5;

Vary2.lwpp = [0.1 0.1];  % mT
Vary2.g = [0.1 ];
Vary2.A=[20 10];
Vary2.weight=0.5;

esfit(spc,@garlic,{{Nx1,Nx2},Exp},{{Vary1,Vary2}});

%% Exp 13 PBN only 
clear, clc, clf
[B,spc,Params] = eprload('exp13_pbn_10min');
plot(B,spc);

%%
Sys.S=1/2;
Sys.g=2;
Sys.Nucs='N,H';
Sys.A=[50 15];
Sys.lwpp = [0 0.1];

Vary.g = 0.1;
Vary.A = [10 10];
Vary.lwpp =[0.1 0.1];

Exp.mwFreq=9.8555; %GHz
Exp.Range =[342.2 362.2]; %mT

garlic(Sys,Exp)

%%
esfit(spc, @garlic, {Sys, Exp},{Vary})

%%
plot(B,spc, B,fit2.fit)
xlabel('magnetic field [G]');
ylabel('arb. units');
title('Exp13 PBN 10 minutes');
legend('data','fit')
text(3550, 0,'g = 2.0063; 14N coupling = 42.0003 MHz, 1H coupling = 9 MHz')

%% Exp 11 PBN time course load data
clear, clc, clf
[B,spc,Params] = eprload('exp11_pbn_2D_30min');
subplot(1,2,1)
plot(cell2mat(B(1)),spc);
spc0=spc(:,60);
% find max and plot maxima from each spectrum against time
max_values = max(spc);
times = cell2mat(B(2));
subplot(1,2,2)
plot(times, max_values, 'o')

%% create model

Sys.S=1/2;
Sys.g=2;
Sys.Nucs='N';
Sys.A=[50];
Sys.lwpp = [0 0.1];

Vary.g = 0.1;
Vary.A = [10];
Vary.lwpp =[0.1 0.1];

Exp.mwFreq=9.8581; %GHz
Exp.Range =[342.1 362.1]; %mT

%% simulate
esfit(spc0, @garlic, {Sys, Exp},{Vary})

%% plot
plot(cell2mat(B(1)),spc0, cell2mat(B(1)),fit1.fit)
xlabel('magnetic field [G]');
ylabel('arb. units');
title('Exp11 PBN 2D 30 minutes');
legend('data','fit')
text(3550, 0,'g = 2.0069; 14N coupling = 43.6476 MHz')

%% Exp 13 allylnitrosilicate and PBN
clear, clc, clf
[B,spc,Params] = eprload('exp13_allylnitrosilicate_pbn_dark_closed_capillar');
plot(B,spc);


%% Exp 16 methylnitrosilicate DIPA 1 h
clear, clc, clf
[B,spc,Params] = eprload('exp16_methylnitrosilicate_diip_1h_2');

Sys.S=1/2;
Sys.g=2;
Sys.lwpp = [0.2 0.2];

Vary.g = 0.1;
Vary.lwpp =[0.2 0.2];

Exp.mwFreq=9.856181; %GHz
Exp.Range =[342.2 362.2]; %mT

esfit(spc, @garlic, {Sys,Exp}, {Vary})

plot(B,spc, B, fit1.fit);
title('Methylnitrosilicate 100 mM, 1 h, 305 nm');
legend('data','fit')
xlabel('magnetic field [G]');
ylabel('arb. units');
text(3540, 0.75, 'g = 1.9987, lwpp = 0.24')




%% Exp 16 allyl nitrosilicate DIPA 1h
clear, clc, clf
[B,spc,Params] = eprload('exp16_allylnitrosilicate_diip_1h_2');
% model DIPA
Sys.S=1/2;
Sys.g=2;
Sys.lwpp = [0.2 0.2];

Vary.g = 0.1;
Vary.lwpp =[0.1 0.1];

Exp.mwFreq=9.858242; %GHz
Exp.Range =[342.2 362.2]; %mT

esfit(spc, @garlic, {Sys,Exp}, {Vary});

subplot(2,2,1)
plot(B,spc, B, fit1.fit);
clear ylim
ylim([0.6 1]);
title('Allyl nitrocatecholsilicate DIPA, 1 h, 305 nm');
legend('data','fit')
xlabel('magnetic field [G]');
ylabel('arb. units');

% Exp 16 allyl nitrosilicate TMA 1h
[Btma,spctma,Paramstma] = eprload('exp16_allylnitrosilicate_tma_1h');

% model TMA
Sys.S=1/2;
Sys.g=2;
Sys.lwpp = [0.2 0.2];

Vary.g = 0.1;
Vary.lwpp =[0.1 0.1];

Exp.mwFreq=9.857751; %GHz
Exp.Range =[342.2 362.2]; %mT

esfit(spctma, @garlic, {Sys,Exp}, {Vary})

subplot(2,2,2)
plot(Btma,spctma, Btma, fit1.fit);
title('Allyl nitrocatecholsilicate TMA, 1 h, 305 nm');
legend('data','fit')
xlabel('magnetic field [G]');
ylabel('arb. units');

% 
[Bdark,spcdark] = eprload('exp16_allylnitrosilicate_diip_2_dark');
subplot(2,2,3)
plot(Bdark, spcdark);
clear ylim
ylim([0.6 1]);
title('Allyl nitrocatecholsilicate DIPA, dark');
xlabel('magnetic field [G]');
ylabel('arb. units');

%no nitro allyl catechol silicate 1h 
[B_nonitro,spc_nonitro,Params] = eprload('exp16_allylcatecholsilicate_1h');
subplot(2,2,4)
plot(B_nonitro,spc_nonitro);
clear ylim
ylim([0.6 1]);
title('Allyl catecholsilicate DIPA, 1 h, 305 nm');
xlabel('magnetic field [G]');
ylabel('arb. units');






%% Exp 17 
[B,spc,Params] = eprload('exp17_allylnitrosilicate_dipa_POBN_2min');
fig = figure;
x0=10;
y0=10;
width=900;
height=500;
set(fig,'position',[x0,y0,width,height])
plot(B,spc, B, fit1.fit, 'LineWidth', 2);
text(3450, 0.55, sprintf('g = 2.0064 A_{14N} = 41.5893 MHz; A_{1H} = 6.3227 MHz'), 'Interpreter','tex', 'FontSize', 20);
title('Allylnitrosilicate 100 mM, POBN 50 mM, 2 minutes, 365 nm LED', 'Interpreter', 'latex', 'FontSize',20);
legend({'data', 'fit'}, 'FontSize', 20)
xlabel('magnetic field [G]', 'Interpreter', 'latex', 'FontSize',20);
ylabel('arb. units', 'Interpreter', 'latex', 'FontSize',20);


[Bdark,spcdark] = eprload('exp17_allylnitrosilicate_dipa_POBN_dark');
subplot(3,1,2)
plot(Bdark,spcdark);
xlabel('magnetic field [G]');
ylabel('arb. units');
title('Allylnitrosilicate 100 mM, POBN 50 mM, dark')

[B_POBN, spc_POBN] = eprload('exp17_POBN_LED_2min');
subplot(3,1,3)
plot(B_POBN,spc_POBN);
xlabel('magnetic field [G]');
ylabel('arb. units');
title('POBN 50 mM, 2 min, 365 nm LED')

%% model
Sys.S=1/2;
Sys.g=2.0064;
Sys.Nucs='N,H';
Sys.A=[41.5893 6.3227];
Sys.lwpp = [0 0.1];
Sys.n = [1 1];

Vary.g = 0.1;
Vary.A = [10 3];
Vary.lwpp =[0.1 0.1];

Exp.mwFreq=9.858419; %GHz
Exp.Range =[342.2 362.2]; %mT

esfit(spc, @garlic, {Sys,Exp}, {Vary})



%% methyl nitrocatechol silicate high concentration

[B,spc,Params] = eprload('methylnitrosilicate_mecn_500mM_2d_new_silicate_3');

% model
Sys.S=1/2;
Sys.g=2;
Sys.Nucs='N,H';
Sys.n =[1,2];
Sys.A=[50 15];
Sys.lwpp = [0 0.2];
Vary.g = 0.1;
Vary.A = [10 5];
Vary.lwpp =[0.1 0.1];

Exp.mwFreq=9.857411; %GHz
Exp.Range =[342.2 362.2]; %mT

esfit(spc(:,19), @garlic, {Sys,Exp}, {Vary})

%plot 
fig = figure;
x0=10;
y0=10;
width=900;
height=800;
set(fig,'position',[x0,y0,width,height])
plot(cell2mat(B(1)),spc(:,20), cell2mat(B(1)), fit5.fit)

text(3460, 0.1,sprintf('g = 1.99731; A_{14N} = 57.33 MHz; A_{1H} = 16.51 MHz'), 'Interpreter', 'latex', 'FontSize', 20)
title(sprintf('Methyl bis(nitrocatecholato)silicate \n 500 mM, 280 nm, 10 min'), 'Interpreter', 'latex', 'FontSize', 24)
xlabel('magnetic field [G]', 'Interpreter', 'latex', 'FontSize',20)
ylabel('arb. units', 'Interpreter', 'latex', 'FontSize',20)
legend('data','fit','Interpreter', 'latex', 'FontSize',20)
