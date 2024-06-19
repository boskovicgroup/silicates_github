subplot(2,1,1)
[B2,spc2] = eprload('methylnitrosilicate_mecn_500mM_2d_new_silicate_3')
mag_field = cell2mat(B2(1))';
plot(mag_field, spc2);
ylim([0 1.8])
xlabel('magnetic field strength [G]','Interpreter','latex', 'FontSize', 20)
ylabel('intensity [a.u.]', 'Interpreter','latex', 'FontSize', 20)
title('Methylnitrosilicate, 500 mM, MeCN, 2D field delay, 280 nm filter, 10 min','Interpreter','latex', 'FontSize', 20)

hold on
subplot(2,1,2)
[B,spc] = eprload('methylnitrosilicate_mecn_500mM_dark_new_silicate_3')
plot(B, spc);
ylim([0 1.8])
title('Methylnitrosilicate, 500 mM, MeCN, dark','Interpreter','latex', 'FontSize', 20)

xlabel('magnetic field strength [G]','Interpreter','latex', 'FontSize', 20)
ylabel('intensity [a.u.]', 'Interpreter','latex', 'FontSize', 20)
