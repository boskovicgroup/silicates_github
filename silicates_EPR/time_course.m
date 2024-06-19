%% 250 mM POBN 100 mM silicates
clear, clc, clf
[t_catechol,int_catechol,Params] = eprload('silicates_time_course/POBN_250mM_allylcatechosilicate_100mM_timesweep');
[t_nitrocatechol,int_nitrocatechol,Params] = eprload('silicates_time_course/POBN_250mM_allylnitrosilicate_100mM_timesweep');
[t_methoxycatechol,int_methoxycatechol,Params] = eprload('silicates_time_course/POBN_250mM_allylmethoxysilicate_100mM_timesweep.DTA');

fig = figure;
width=1100;
height=800
set(fig,'position',[0,0,width,height])

plot(t_catechol, int_catechol, 'o', 'MarkerSize', 5, 'MarkerFaceColor','blue')
hold on
plot(t_nitrocatechol, int_nitrocatechol, 'o', 'MarkerSize', 5, 'MarkerFaceColor','red')
plot(t_methoxycatechol, int_methoxycatechol, 'o', 'MarkerSize', 5, 'MarkerFaceColor',[0.9290    0.6940    0.1250])
legend('unsubstituted', 'nitro', 'methoxy','Interpreter', 'latex', 'FontSize',20)
xlabel('time [s]', 'Interpreter', 'latex', 'FontSize',20)
ylabel('EPR intensity at 3508.8 G', 'Interpreter', 'latex', 'FontSize',20 )
title('Kinetics of radical trapping with POBN', 'Interpreter', 'latex', 'FontSize',24 )

%% 
clear, clc, clf
[t_250_200,int_250_200,Params] = eprload('silicates_time_course/POBN_250mM_allylnitrosilicate_200mM_timesweep');
[t_250_100,int_250_100,Params] = eprload('silicates_time_course/POBN_250mM_allylnitrosilicate_100mM_timesweep');
[t_100_200,int_100_200,Params] = eprload('silicates_time_course/POBN_100mM_allylnitrosilicate_200mM_timesweep');
[t_100_50,int_100_50,Params] = eprload('silicates_time_course/POBN_100mM_allylnitrosilicate_50mM_timesweep');
[t_100_100,int_100_100,Params] = eprload('silicates_time_course/POBN_100mM_allylnitrosilicate_100mM_timesweep');

%
plot(t_100_50, int_100_50, 'o');
hold on
plot(t_100_200, int_100_200, 'o');
plot(t_250_200, int_250_200, 'o');
plot(t_250_100(1:2000), int_250_100(1:2000), 'o');
plot(t_100_100, int_100_100, 'o');
legend('100,50', '100,200', '250,200', '250,100', '100, 100')

