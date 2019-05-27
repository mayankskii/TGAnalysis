%% Instructions
% This script generates and saves plots from Plot1 to Plot 150 in Plots
% subfolder inside the main TGAnalysis folder. To generate a particular or
% set of plots use commenting as folllows.
% To start comment block use %{
% To end comment use %}
% Use them to block out any options appropriately to comment the not needed code block
%% Presets
set(0,'DefaultFigureVisible','off');
set(groot,'defaultLineLineWidth',2);
%% Plot 1
x  = Kinetic.k1{1,1}(:,1);
y1 = Kinetic.k1{1,1}(:,2)./1e3;
y2 = Kinetic.k1{2,1}(:,2)./1e3;
y3 = Kinetic.k1{3,1}(:,2)./1e3;
y4 = Kinetic.k1{4,1}(:,2)./1e3;
h(1) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Rate Isoconversional Methods','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(1),[pwd '/Plots/Plot1.png']);
%% Plot 2
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k2{1,1}(:,2)./1e3;
y2 = Kinetic.k2{2,1}(:,2)./1e3;
y3 = Kinetic.k2{3,1}(:,2)./1e3;
y4 = Kinetic.k2{4,1}(:,2)./1e3;
h(2) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Kissinger Akahira Sunose (KAS)','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(2),[pwd '/Plots/Plot2.png']);
%% Plot 3
x  = Kinetic.k3{1,1}(:,1);
y1 = Kinetic.k3{1,1}(:,2)./1e3;
y2 = Kinetic.k3{2,1}(:,2)./1e3;
y3 = Kinetic.k3{3,1}(:,2)./1e3;
y4 = Kinetic.k3{4,1}(:,2)./1e3;
h(3) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Senum Yang Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(3),[pwd '/Plots/Plot3.png']);
%% Plot 4
x  = Kinetic.k4{1,1}(:,1);
y1 = Kinetic.k4{1,1}(:,2)./1e3;
y2 = Kinetic.k4{2,1}(:,2)./1e3;
y3 = Kinetic.k4{3,1}(:,2)./1e3;
y4 = Kinetic.k4{4,1}(:,2)./1e3;
h(4) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Coats Redfern Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(4),[pwd '/Plots/Plot4.png']);
%% Plot 5
x  = Kinetic.k5{1,1}(:,1);
y1 = Kinetic.k5{1,1}(:,2)./1e3;
y2 = Kinetic.k5{2,1}(:,2)./1e3;
y3 = Kinetic.k5{3,1}(:,2)./1e3;
y4 = Kinetic.k5{4,1}(:,2)./1e3;
h(5) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Flynn Wall Ozawa (FWO)','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(5),[pwd '/Plots/Plot5.png']);
%% Plot 6
x  = Kinetic.k6{1,1}(:,1);
y1 = Kinetic.k6{1,1}(:,2)./1e3;
y2 = Kinetic.k6{2,1}(:,2)./1e3;
y3 = Kinetic.k6{3,1}(:,2)./1e3;
y4 = Kinetic.k6{4,1}(:,2)./1e3;
h(6) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Murray White k=1.95 Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(6),[pwd '/Plots/Plot6.png']);
%% Plot 7
x  = Kinetic.k7{1,1}(:,1);
y1 = Kinetic.k7{1,1}(:,2)./1e3;
y2 = Kinetic.k7{2,1}(:,2)./1e3;
y3 = Kinetic.k7{3,1}(:,2)./1e3;
y4 = Kinetic.k7{4,1}(:,2)./1e3;
h(7) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Murray White k=1.92 Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(8),[pwd '/Plots/Plot8.png']);
%% Plot 8
x  = Kinetic.k11{1,1}(:,1);
y1 = Kinetic.k11{1,1}(:,2)./1e3;
y2 = Kinetic.k11{2,1}(:,2)./1e3;
y3 = Kinetic.k11{3,1}(:,2)./1e3;
y4 = Kinetic.k11{4,1}(:,2)./1e3;
h(8) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf E_{a} (KJ/mol) \it Activation Energy','fontsize',20)
title('Vyazkovin AIC Method','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(8),[pwd '/Plots/Plot8.png']);
%% Plot 9
%%% Pre exponential factor Plots
x  = Kinetic.k1{1,1}(:,1);
y1 = Kinetic.k1{1,1}(:,3);
y2 = Kinetic.k1{2,1}(:,3);
y3 = Kinetic.k1{3,1}(:,3);
y4 = Kinetic.k1{4,1}(:,3);
h(9) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Rate Isoconversional Methods','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(9),[pwd '/Plots/Plot9.png']);
%% Plot 10
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k2{1,1}(:,3);
y2 = Kinetic.k2{2,1}(:,3);
y3 = Kinetic.k2{3,1}(:,3);
y4 = Kinetic.k2{4,1}(:,3);
h(10) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Kissinger Akahira Sunose (KAS)','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(10),[pwd '/Plots/Plot10.png']);
%% Plot 11
x  = Kinetic.k3{1,1}(:,1);
y1 = Kinetic.k3{1,1}(:,3);
y2 = Kinetic.k3{2,1}(:,3);
y3 = Kinetic.k3{3,1}(:,3);
y4 = Kinetic.k3{4,1}(:,3);
h(11) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Senum Yang Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(11),[pwd '/Plots/Plot11.png']);
%% Plot 12
x  = Kinetic.k4{1,1}(:,1);
y1 = Kinetic.k4{1,1}(:,3);
y2 = Kinetic.k4{2,1}(:,3);
y3 = Kinetic.k4{3,1}(:,3);
y4 = Kinetic.k4{4,1}(:,3);
h(12) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Coats Redfern Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(12),[pwd '/Plots/Plot12.png']);
%% Plot 13
x  = Kinetic.k5{1,1}(:,1);
y1 = Kinetic.k5{1,1}(:,3);
y2 = Kinetic.k5{2,1}(:,3);
y3 = Kinetic.k5{3,1}(:,3);
y4 = Kinetic.k5{4,1}(:,3);
h(13) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Flynn Wall Ozawa (FWO)','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(13),[pwd '/Plots/Plot13.png']);
%% Plot 14
x  = Kinetic.k6{1,1}(:,1);
y1 = Kinetic.k6{1,1}(:,3);
y2 = Kinetic.k6{2,1}(:,3);
y3 = Kinetic.k6{3,1}(:,3);
y4 = Kinetic.k6{4,1}(:,3);
h(14) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Murray White k=1.95 Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(14),[pwd '/Plots/Plot14.png']);
%% Plot 15
x  = Kinetic.k7{1,1}(:,1);
y1 = Kinetic.k7{1,1}(:,3);
y2 = Kinetic.k7{2,1}(:,3);
y3 = Kinetic.k7{3,1}(:,3);
y4 = Kinetic.k7{4,1}(:,3);
h(15) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Murray White k=1.92 Approximation','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(15),[pwd '/Plots/Plot15.png']);
%% Plot 16
x  = Kinetic.k11{1,1}(:,1);
y1 = Kinetic.k11{1,1}(:,3);
y2 = Kinetic.k11{2,1}(:,3);
y3 = Kinetic.k11{3,1}(:,3);
y4 = Kinetic.k11{4,1}(:,3);
h(16) = figure('Position', get(0, 'Screensize'));
semilogy(x,y1,x,y2,x,y3,x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf k_{0} (s^{-1}) \it Pre exp factor','fontsize',20)
title('Vyazkovin AIC Method','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(16),[pwd '/Plots/Plot16.png']);
%% Plot 17
%%% Other Analysis
x   =  Kinetic.k2{1,1}(:,1);
y1  = (Kinetic.k3{1,1}(:,2)- Kinetic.k2{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y2  = (Kinetic.k3{1,1}(:,2)- Kinetic.k4{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y3  = (Kinetic.k3{1,1}(:,2)- Kinetic.k5{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y4  = (Kinetic.k3{1,1}(:,2)- Kinetic.k6{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y5  = (Kinetic.k3{1,1}(:,2)- Kinetic.k7{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y11 = (Kinetic.k3{2,1}(:,2)- Kinetic.k2{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y21 = (Kinetic.k3{2,1}(:,2)- Kinetic.k4{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y31 = (Kinetic.k3{2,1}(:,2)- Kinetic.k5{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y41 = (Kinetic.k3{2,1}(:,2)- Kinetic.k6{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y51 = (Kinetic.k3{2,1}(:,2)- Kinetic.k7{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y12 = (Kinetic.k3{3,1}(:,2)- Kinetic.k2{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y22 = (Kinetic.k3{3,1}(:,2)- Kinetic.k4{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y32 = (Kinetic.k3{3,1}(:,2)- Kinetic.k5{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y42 = (Kinetic.k3{3,1}(:,2)- Kinetic.k6{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y52 = (Kinetic.k3{3,1}(:,2)- Kinetic.k7{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y13 = (Kinetic.k3{4,1}(:,2)- Kinetic.k2{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
y23 = (Kinetic.k3{4,1}(:,2)- Kinetic.k4{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
y33 = (Kinetic.k3{4,1}(:,2)- Kinetic.k5{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
y43 = (Kinetic.k3{4,1}(:,2)- Kinetic.k6{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
y53 = (Kinetic.k3{4,1}(:,2)- Kinetic.k7{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
h(17) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x,100*y1,x,100*y2,x,100*y3,x,100*y4,x,100*y5);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Pine Needles','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,100*y11,x,100*y21,x,100*y31,x,100*y41,x,100*y51);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Corn Cob','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,100*y12,x,100*y22,x,100*y32,x,100*y42,x,100*y52);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Perl Millet','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,100*y13,x,100*y23,x,100*y33,x,100*y43,x,100*y53);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Wood','fontweight','bold','fontsize',24)
lgd  = legend('KAS Type','Asymp.','Linear','Murray_{1.95}','Murray_{1.92}');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Experimental Relative Error wrt Polynomial Approx.','fontweight','bold','fontsize',28)
saveas(h(17),[pwd '/Plots/Plot17.png']);
%% Plot 18
x   =  Kinetic.k2{1,1}(:,1);
y1  = (Kinetic.k3{1,1}(:,3)- Kinetic.k2{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y2  = (Kinetic.k3{1,1}(:,3)- Kinetic.k4{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y3  = (Kinetic.k3{1,1}(:,3)- Kinetic.k5{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y4  = (Kinetic.k3{1,1}(:,3)- Kinetic.k6{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y5  = (Kinetic.k3{1,1}(:,3)- Kinetic.k7{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y11 = (Kinetic.k3{2,1}(:,3)- Kinetic.k2{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y21 = (Kinetic.k3{2,1}(:,3)- Kinetic.k4{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y31 = (Kinetic.k3{2,1}(:,3)- Kinetic.k5{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y41 = (Kinetic.k3{2,1}(:,3)- Kinetic.k6{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y51 = (Kinetic.k3{2,1}(:,3)- Kinetic.k7{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y12 = (Kinetic.k3{3,1}(:,3)- Kinetic.k2{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y22 = (Kinetic.k3{3,1}(:,3)- Kinetic.k4{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y32 = (Kinetic.k3{3,1}(:,3)- Kinetic.k5{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y42 = (Kinetic.k3{3,1}(:,3)- Kinetic.k6{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y52 = (Kinetic.k3{3,1}(:,3)- Kinetic.k7{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y13 = (Kinetic.k3{4,1}(:,3)- Kinetic.k2{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
y23 = (Kinetic.k3{4,1}(:,3)- Kinetic.k4{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
y33 = (Kinetic.k3{4,1}(:,3)- Kinetic.k5{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
y43 = (Kinetic.k3{4,1}(:,3)- Kinetic.k6{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
y53 = (Kinetic.k3{4,1}(:,3)- Kinetic.k7{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
h(18) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x,100*y1,x,100*y2,x,100*y3,x,100*y4,x,100*y5);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Pine Needles','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,100*y11,x,100*y21,x,100*y31,x,100*y41,x,100*y51);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Corn Cob','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,100*y12,x,100*y22,x,100*y32,x,100*y42,x,100*y52);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Perl Millet','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,100*y13,x,100*y23,x,100*y33,x,100*y43,x,100*y53);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Wood','fontweight','bold','fontsize',24)
lgd  = legend('KAS Type','Asymp.','Linear','Murray_{1.95}','Murray_{1.92}');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Experimental Relative Error wrt Polynomial Approx.','fontweight','bold','fontsize',28)
saveas(h(18),[pwd '/Plots/Plot18.png']);
%% Plot 19
x   =  Kinetic.k2{1,1}(:,1);
y1  = (Kinetic.k3{1,1}(:,2)- Kinetic.k4{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y2  = (Kinetic.k3{2,1}(:,2)- Kinetic.k4{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y3  = (Kinetic.k3{3,1}(:,2)- Kinetic.k4{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y4  = (Kinetic.k3{4,1}(:,2)- Kinetic.k4{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
y11 = (Kinetic.k3{1,1}(:,2)- Kinetic.k5{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y21 = (Kinetic.k3{2,1}(:,2)- Kinetic.k5{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y31 = (Kinetic.k3{3,1}(:,2)- Kinetic.k5{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y41 = (Kinetic.k3{4,1}(:,2)- Kinetic.k5{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
y12 = (Kinetic.k3{1,1}(:,2)- Kinetic.k6{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y22 = (Kinetic.k3{2,1}(:,2)- Kinetic.k6{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y32 = (Kinetic.k3{3,1}(:,2)- Kinetic.k6{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y42 = (Kinetic.k3{4,1}(:,2)- Kinetic.k6{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
y13 = (Kinetic.k3{1,1}(:,2)- Kinetic.k7{1,1}(:,2))./Kinetic.k3{1,1}(:,2);
y23 = (Kinetic.k3{2,1}(:,2)- Kinetic.k7{2,1}(:,2))./Kinetic.k3{2,1}(:,2);
y33 = (Kinetic.k3{3,1}(:,2)- Kinetic.k7{3,1}(:,2))./Kinetic.k3{3,1}(:,2);
y43 = (Kinetic.k3{4,1}(:,2)- Kinetic.k7{4,1}(:,2))./Kinetic.k3{4,1}(:,2);
h(19) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x,100*smoothdata(y1,'sgolay',50),x,100*smoothdata(y2,'sgolay',50),x,100*smoothdata(y3,'sgolay',50),x,100*smoothdata(y4,'sgolay',50));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Asymptotic','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,100*y11,x,100*y21,x,100*y31,x,100*y41);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Linear','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,100*y12,x,100*y22,x,100*y32,x,100*y42);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Murray_{1.95}','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,100*y13,x,100*y23,x,100*y33,x,100*y43);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta E_{a} %','fontsize',20)
title('Murray_{1.92}','fontweight','bold','fontsize',24)
lgd  = legend('Pine','Perl','Corn','Wood');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Experimental Relative Error wrt Polynomial Approx.','fontweight','bold','fontsize',28)
saveas(h(19),[pwd '/Plots/Plot19.png']);
%% Plot 20
x   =  Kinetic.k2{1,1}(:,1);
y1  = (Kinetic.k3{1,1}(:,3)- Kinetic.k4{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y2  = (Kinetic.k3{2,1}(:,3)- Kinetic.k4{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y3  = (Kinetic.k3{3,1}(:,3)- Kinetic.k4{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y4  = (Kinetic.k3{4,1}(:,3)- Kinetic.k4{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
y11 = (Kinetic.k3{1,1}(:,3)- Kinetic.k5{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y21 = (Kinetic.k3{2,1}(:,3)- Kinetic.k5{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y31 = (Kinetic.k3{3,1}(:,3)- Kinetic.k5{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y41 = (Kinetic.k3{4,1}(:,3)- Kinetic.k5{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
y12 = (Kinetic.k3{1,1}(:,3)- Kinetic.k6{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y22 = (Kinetic.k3{2,1}(:,3)- Kinetic.k6{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y32 = (Kinetic.k3{3,1}(:,3)- Kinetic.k6{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y42 = (Kinetic.k3{4,1}(:,3)- Kinetic.k6{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
y13 = (Kinetic.k3{1,1}(:,3)- Kinetic.k7{1,1}(:,3))./Kinetic.k3{1,1}(:,3);
y23 = (Kinetic.k3{2,1}(:,3)- Kinetic.k7{2,1}(:,3))./Kinetic.k3{2,1}(:,3);
y33 = (Kinetic.k3{3,1}(:,3)- Kinetic.k7{3,1}(:,3))./Kinetic.k3{3,1}(:,3);
y43 = (Kinetic.k3{4,1}(:,3)- Kinetic.k7{4,1}(:,3))./Kinetic.k3{4,1}(:,3);
h(20) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x,100*y1,x,100*y2,x,100*y3,x,100*y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Asymptotic','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,100*y11,x,100*y21,x,100*y31,x,100*y41);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Linear','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,100*y12,x,100*y22,x,100*y32,x,100*y42);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Murray_{1.95}','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,100*y13,x,100*y23,x,100*y33,x,100*y43);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \delta k_{0} %','fontsize',20)
title('Murray_{1.92}','fontweight','bold','fontsize',24)
lgd  = legend('Pine','Perl','Corn','Wood');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Experimental Relative Error wrt Polynomial Approx.','fontweight','bold','fontsize',28)
saveas(h(20),[pwd '/Plots/Plot20.png']);
%% Plot 21
%%% Order Analysis
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{1,1}{1,1}(:,1);
y2 = Kinetic.k16{2,1}{1,1}(:,1);
y3 = Kinetic.k16{3,1}{1,1}(:,1);
y4 = Kinetic.k16{4,1}{1,1}(:,1);
y5 = Kinetic.k16{1,1}{3,1}(:,1);
y6 = Kinetic.k16{1,1}{3,1}(:,2);
y7 = Kinetic.k16{1,1}{3,1}(:,3);
h(21) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4,x,y5,x,y6,x,y7);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf Z_{\alpha} \it Function','fontsize',20)
title('Craido Method for HR10','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood','Power Law(n)','JMA Model(n)','RO Model(2)');
lgd.FontSize = 20;
saveas(h(21),[pwd '/Plots/Plot21.png']);
%% Plot 22
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{1,1}{1,1}(:,2);
y2 = Kinetic.k16{2,1}{1,1}(:,2);
y3 = Kinetic.k16{3,1}{1,1}(:,2);
y4 = Kinetic.k16{4,1}{1,1}(:,2);
y5 = Kinetic.k16{1,1}{3,1}(:,1);
y6 = Kinetic.k16{1,1}{3,1}(:,2);
y7 = Kinetic.k16{1,1}{3,1}(:,3);
h(22) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4,x,y5,x,y6,x,y7);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf Z_{\alpha} \it Function','fontsize',20)
title('Craido Method for HR15','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood','Power Law(n)','JMA Model(n)','RO Model(2)');
lgd.FontSize = 20;
saveas(h(22),[pwd '/Plots/Plot22.png']);
%% Plot 23
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{1,1}{1,1}(:,3);
y2 = Kinetic.k16{2,1}{1,1}(:,3);
y3 = Kinetic.k16{3,1}{1,1}(:,3);
y4 = Kinetic.k16{4,1}{1,1}(:,3);
y5 = Kinetic.k16{1,1}{3,1}(:,1);
y6 = Kinetic.k16{1,1}{3,1}(:,2);
y7 = Kinetic.k16{1,1}{3,1}(:,3);
h(23) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4,x,y5,x,y6,x,y7);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf Z_{\alpha} \it Function','fontsize',20)
title('Craido Method for HR20','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood','Power Law(n)','JMA Model(n)','RO Model(2)');
lgd.FontSize = 20;
saveas(h(23),[pwd '/Plots/Plot23.png']);
%% Plot 24
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{1,1}{2,1}(:,1);
y2 = Kinetic.k16{2,1}{2,1}(:,1);
y3 = Kinetic.k16{3,1}{2,1}(:,1);
y4 = Kinetic.k16{4,1}{2,1}(:,1);
h(24) = figure('Position', get(0, 'Screensize'));
plot(x,smooth(y1),x,smooth(y2),x,smooth(y3),x,smooth(y4));
hline = refline(0,0);
hline.Color = 'm';
hline.LineStyle = '--';
hline.LineWidth = 0.75;
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \eta \it Order','fontsize',20)
title('Exp. Reaction Order Modelling for HR10','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(24),[pwd '/Plots/Plot24.png']);
%% Plot 25
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{1,1}{2,1}(:,2);
y2 = Kinetic.k16{2,1}{2,1}(:,2);
y3 = Kinetic.k16{3,1}{2,1}(:,2);
y4 = Kinetic.k16{4,1}{2,1}(:,2);
h(25) = figure('Position', get(0, 'Screensize'));
plot(x,smooth(y1),x,smooth(y2),x,smooth(y3),x,smooth(y4));
hline = refline(0,0);
hline.Color = 'm';
hline.LineStyle = '--';
hline.LineWidth = 0.75;
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \eta \it Order','fontsize',20)
title('Exp. Reaction Order Modelling for HR15','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(25),[pwd '/Plots/Plot25.png']);
%% Plot 26
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{1,1}{2,1}(:,3);
y2 = Kinetic.k16{2,1}{2,1}(:,3);
y3 = Kinetic.k16{3,1}{2,1}(:,3);
y4 = Kinetic.k16{4,1}{2,1}(:,3);
h(26) = figure('Position', get(0, 'Screensize'));
plot(x,smooth(y1),x,smooth(y2),x,smooth(y3),x,smooth(y4));
hline = refline(0,0);
hline.Color = 'm';
hline.LineStyle = '--';
hline.LineWidth = 0.75;
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \eta \it Order','fontsize',20)
title('Exp. Reaction Order Modelling for HR20','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood');
lgd.FontSize = 20;
saveas(h(26),[pwd '/Plots/Plot26.png']);
%% Plot 27
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{1,1}{4,1}(:,1);
y2 = Kinetic.k16{1,1}{4,1}(:,2);
y3 = Kinetic.k16{1,1}{4,1}(:,3);
y4 = Kinetic.k16{1,1}{6,1}(1,1)*Kinetic.k16{1,1}{4,1}(:,4)+Kinetic.k16{1,1}{6,1}(1,2);
y5 = Kinetic.k16{1,1}{6,1}(2,1)*Kinetic.k16{1,1}{4,1}(:,4)+Kinetic.k16{1,1}{6,1}(2,2);
y6 = Kinetic.k16{1,1}{6,1}(3,1)*Kinetic.k16{1,1}{4,1}(:,4)+Kinetic.k16{1,1}{6,1}(3,2);
h(27) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3)
hold on
p(1) = plot(x,y4,'--k');
p(1).LineWidth = 1;
p(2) = plot(x,y5,'--m');
p(2).LineWidth = 1;
p(3) = plot(x,y6,'--c');
p(3).LineWidth = 1;
hold off
dim = [0.2 0.5 0.3 0.3];
str = {'\it Fit = a *log(-log(1-\alpha)))+ b','\rm \bf HR        a              b'...
                                      ,'\rm 10    0.3884      0.8070'...
                                      ,'\rm 15    0.3679      0.7765'...
                                      ,'\rm 20    0.3596      0.7734'};
a = annotation('textbox',dim,'String',str,'FitBoxToText','on');
a.FontSize = 16;
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf g(\alpha) \it Integral Function','fontsize',20)
title('Exp. g(\alpha) and RO(1) fit for Pine','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20','HR10_{fit}','HR15_{fit}','HR20_{fit}');
set(lgd,'Position', [0.865 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
%% Plot 28
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{2,1}{4,1}(:,1);
y2 = Kinetic.k16{2,1}{4,1}(:,2);
y3 = Kinetic.k16{2,1}{4,1}(:,3);
y4 = Kinetic.k16{2,1}{6,1}(1,1)*Kinetic.k16{2,1}{4,1}(:,4)+Kinetic.k16{2,1}{6,1}(1,2);
y5 = Kinetic.k16{2,1}{6,1}(2,1)*Kinetic.k16{2,1}{4,1}(:,4)+Kinetic.k16{2,1}{6,1}(2,2);
y6 = Kinetic.k16{2,1}{6,1}(3,1)*Kinetic.k16{2,1}{4,1}(:,4)+Kinetic.k16{2,1}{6,1}(3,2);
h(28) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3)
hold on
p(1) = plot(x,y4,'--k');
p(1).LineWidth = 1;
p(2) = plot(x,y5,'--m');
p(2).LineWidth = 1;
p(3) = plot(x,y6,'--c');
p(3).LineWidth = 1;
hold off
dim = [0.2 0.5 0.3 0.3];
str = {'\it Fit = a *log(-log(1-\alpha)))+ b','\rm \bf HR        a              b'...
                                      ,'\rm 10    0.5047      0.6852'...
                                      ,'\rm 15    0.5705      0.7766'...
                                      ,'\rm 20    0.7229      0.9392'};
a = annotation('textbox',dim,'String',str,'FitBoxToText','on');
a.FontSize = 16;
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf g(\alpha) \it Integral Function','fontsize',20)
title('Exp. g(\alpha) and RO(1) fit for Corn','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20','HR10_{fit}','HR15_{fit}','HR20_{fit}');
set(lgd,'Position', [0.865 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
%% Plot 29
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{3,1}{4,1}(:,1);
y2 = Kinetic.k16{3,1}{4,1}(:,2);
y3 = Kinetic.k16{3,1}{4,1}(:,3);
y4 = Kinetic.k16{3,1}{6,1}(1,1)*Kinetic.k16{3,1}{4,1}(:,4)+Kinetic.k16{3,1}{6,1}(1,2);
y5 = Kinetic.k16{3,1}{6,1}(2,1)*Kinetic.k16{3,1}{4,1}(:,4)+Kinetic.k16{3,1}{6,1}(2,2);
y6 = Kinetic.k16{3,1}{6,1}(3,1)*Kinetic.k16{3,1}{4,1}(:,4)+Kinetic.k16{3,1}{6,1}(3,2);
h(29) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3)
hold on
p(1) = plot(x,y4,'--k');
p(1).LineWidth = 1;
p(2) = plot(x,y5,'--m');
p(2).LineWidth = 1;
p(3) = plot(x,y6,'--c');
p(3).LineWidth = 1;
hold off
dim = [0.2 0.5 0.3 0.3];
str = {'\it Fit = a *log(-log(1-\alpha)))+ b','\rm \bf HR        a              b'...
                                      ,'\rm 10    0.4799      1.6947'...
                                      ,'\rm 15    0.5130      1.7643'...
                                      ,'\rm 20    0.5346      1.7472'};
a = annotation('textbox',dim,'String',str,'FitBoxToText','on');
a.FontSize = 16;
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf g(\alpha) \it Integral Function','fontsize',20)
title('Exp. g(\alpha) and RO(1) fit for Perl','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20','HR10_{fit}','HR15_{fit}','HR20_{fit}');
set(lgd,'Position', [0.865 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
%% Plot 30
x  = Kinetic.k2{1,1}(:,1);
y1 = Kinetic.k16{4,1}{4,1}(:,1);
y2 = Kinetic.k16{4,1}{4,1}(:,2);
y3 = Kinetic.k16{4,1}{4,1}(:,3);
y4 = Kinetic.k16{4,1}{6,1}(1,1)*Kinetic.k16{4,1}{4,1}(:,4)+Kinetic.k16{4,1}{6,1}(1,2);
y5 = Kinetic.k16{4,1}{6,1}(2,1)*Kinetic.k16{4,1}{4,1}(:,4)+Kinetic.k16{4,1}{6,1}(2,2);
y6 = Kinetic.k16{4,1}{6,1}(3,1)*Kinetic.k16{4,1}{4,1}(:,4)+Kinetic.k16{4,1}{6,1}(3,2);
h(30) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3)
hold on
p(1) = plot(x,y4,'--k');
p(1).LineWidth = 1;
p(2) = plot(x,y5,'--m');
p(2).LineWidth = 1;
p(3) = plot(x,y6,'--c');
p(3).LineWidth = 1;
hold off
dim = [0.2 0.5 0.3 0.3];
str = {'\it Fit = a *log(-log(1-\alpha)))+ b','\rm \bf HR        a              b'...
                                      ,'\rm 10    0.8230      1.7797'...
                                      ,'\rm 15    0.7399      1.2197'...
                                      ,'\rm 20    0.6955      1.1454'};
a = annotation('textbox',dim,'String',str,'FitBoxToText','on');
a.FontSize = 16;
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf g(\alpha) \it Integral Function','fontsize',20)
title('Exp. g(\alpha) and RO(1) fit for Wood','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20','HR10_{fit}','HR15_{fit}','HR20_{fit}');
set(lgd,'Position', [0.865 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
%% Plot 31
x  = Kinetic.k2{1,1}(1:end-1,1);
y1 = Kinetic.k16{1,1}{5,1}(1:end-1,1);
y2 = Kinetic.k16{2,1}{5,1}(1:end-1,1);
y3 = Kinetic.k16{3,1}{5,1}(1:end-1,1);
y4 = Kinetic.k16{4,1}{5,1}(1:end-1,1);
y5 = Kinetic.k16{1,1}{5,1}(1:end-1,4);
h(31) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4,x,y5)
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf f(\alpha) \it Differential Function','fontsize',20)
title('Exp. f(\alpha) and RO(1) fit for HR10','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood','RO(1)');
lgd.FontSize = 20;
%% Plot 32
x  = Kinetic.k2{1,1}(1:end-1,1);
y1 = Kinetic.k16{1,1}{5,1}(1:end-1,2);
y2 = Kinetic.k16{2,1}{5,1}(1:end-1,2);
y3 = Kinetic.k16{3,1}{5,1}(1:end-1,2);
y4 = Kinetic.k16{4,1}{5,1}(1:end-1,2);
y5 = Kinetic.k16{1,1}{5,1}(1:end-1,4);
h(32) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4,x,y5)
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf f(\alpha) \it Differential Function','fontsize',20)
title('Exp. f(\alpha) and RO(1) fit for HR15','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood','RO(1)');
lgd.FontSize = 20;
%% Plot 33
x  = Kinetic.k2{1,1}(1:end-1,1);
y1 = Kinetic.k16{1,1}{5,1}(1:end-1,3);
y2 = Kinetic.k16{2,1}{5,1}(1:end-1,3);
y3 = Kinetic.k16{3,1}{5,1}(1:end-1,3);
y4 = Kinetic.k16{4,1}{5,1}(1:end-1,3);
y5 = Kinetic.k16{1,1}{5,1}(1:end-1,4);
h(33) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4,x,y5)
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf f(\alpha) \it Differential Function','fontsize',20)
title('Exp. f(\alpha) and RO(1) fit for HR20','fontweight','bold','fontsize',28)
lgd  = legend('Pine','Corn','Perl','Wood','RO(1)');
lgd.FontSize = 20;
%% Plot 34
x  = Kinetic.k2{1,1}(1:end-1,1);
y1 = Kinetic.k16{1,1}{5,1}(1:end-1,1);
y2 = Kinetic.k16{1,1}{5,1}(1:end-1,2);
y3 = Kinetic.k16{1,1}{5,1}(1:end-1,3);
y4 = Kinetic.k16{1,1}{5,1}(1:end-1,4);
h(34) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4)
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf f(\alpha) \it Differential Function','fontsize',20)
title('Exp. f(\alpha) and RO(1) fit for Pine','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 35
x  = Kinetic.k2{1,1}(1:end-1,1);
y1 = Kinetic.k16{2,1}{5,1}(1:end-1,1);
y2 = Kinetic.k16{2,1}{5,1}(1:end-1,2);
y3 = Kinetic.k16{2,1}{5,1}(1:end-1,3);
y4 = Kinetic.k16{2,1}{5,1}(1:end-1,4);
h(35) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4)
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf f(\alpha) \it Differential Function','fontsize',20)
title('Exp. f(\alpha) and RO(1) fit for Corn','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 36
x  = Kinetic.k2{1,1}(1:end-1,1);
y1 = Kinetic.k16{3,1}{5,1}(1:end-1,1);
y2 = Kinetic.k16{3,1}{5,1}(1:end-1,2);
y3 = Kinetic.k16{3,1}{5,1}(1:end-1,3);
y4 = Kinetic.k16{3,1}{5,1}(1:end-1,4);
h(36) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4)
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf f(\alpha) \it Differential Function','fontsize',20)
title('Exp. f(\alpha) and RO(1) fit for Perl','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 37
x  = Kinetic.k2{1,1}(1:end-1,1);
y1 = Kinetic.k16{4,1}{5,1}(1:end-1,1);
y2 = Kinetic.k16{4,1}{5,1}(1:end-1,2);
y3 = Kinetic.k16{4,1}{5,1}(1:end-1,3);
y4 = Kinetic.k16{4,1}{5,1}(1:end-1,4);
h(37) = figure('Position', get(0, 'Screensize'));
plot(x,y1,x,y2,x,y3,x,y4)
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf f(\alpha) \it Differential Function','fontsize',20)
title('Exp. f(\alpha) and RO(1) fit for Wood','fontweight','bold','fontsize',28)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 38
x   =  Kinetic.k2{1,1}(1:end-1,1);
y1  = smooth(abs(log(Kinetic.k17{1,1}(:,1))));
y2  = smooth(abs(log(Kinetic.k17{2,1}(:,1))));
y3  = smooth(abs(log(Kinetic.k17{3,1}(:,1))));
y4  = smooth(abs(log(Kinetic.k17{4,1}(:,1))));
h(38) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(E_{a}) \it Distribution','fontsize',20)
title('Pine','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(E_{a}) \it Distribution','fontsize',20)
title('Corn','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(E_{a}) \it Distribution','fontsize',20)
title('Perl','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(E_{a}) \it Distribution','fontsize',20)
title('Wood','fontweight','bold','fontsize',24)
sgtitle('Miura Maki Method f(E_{a}) Distribution','fontweight','bold','fontsize',28)
%% Plot 39
x   =  Kinetic.k2{1,1}(1:end-1,1);
y1  = abs(log(Kinetic.k17{1,1}(:,2)));
y2  = abs(log(Kinetic.k17{2,1}(:,2)));
y3  = abs(log(Kinetic.k17{3,1}(:,2)));
y4  = abs(log(Kinetic.k17{4,1}(:,2)));
h(39) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(k_{0}) \it Distribution','fontsize',20)
title('Pine','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(k_{0}) \it Distribution','fontsize',20)
title('Corn','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(k_{0}) \it Distribution','fontsize',20)
title('Perl','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,y4);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln f(k_{0}) \it Distribution','fontsize',20)
title('Wood','fontweight','bold','fontsize',24)
sgtitle('Miura Maki Method f(k_{0}) Distribution','fontweight','bold','fontsize',28)
%% Plot 40
x   = Kinetic.k2{1,1}(:,1);
y1  = Kinetic.t1{1,1}{2,1}./1e3;
y2  = Kinetic.t1{1,1}{3,1}./1e3;
y3  = Kinetic.t1{1,1}{4,1};
y4  = Kinetic.t1{1,1}{5,1};
h(40) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta H (KJ/mol) ','fontsize',20)
title('Enthalpy','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta G (KJ/mol) ','fontsize',20)
title('Gibbs Energy','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta S (J/K)','fontsize',20)
title('Entropy','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,log(y4));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln Q_{\Theta} ','fontsize',20)
title('Reaction Quotient','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Thermodynamic Parameters for Pine','fontweight','bold','fontsize',28)
%% Plot 41
x   = Kinetic.k2{1,1}(:,1);
y1  = Kinetic.t1{2,1}{2,1}./1e3;
y2  = Kinetic.t1{2,1}{3,1}./1e3;
y3  = Kinetic.t1{2,1}{4,1};
y4  = Kinetic.t1{2,1}{5,1};
h(41) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta H (KJ/mol) ','fontsize',20)
title('Enthalpy','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta G (KJ/mol) ','fontsize',20)
title('Gibbs Energy','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta S (J/K)','fontsize',20)
title('Entropy','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,log(y4));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln Q_{\Theta} ','fontsize',20)
title('Reaction Quotient','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Thermodynamic Parameters for Corn','fontweight','bold','fontsize',28)
%% Plot 42
x   = Kinetic.k2{1,1}(:,1);
y1  = Kinetic.t1{3,1}{2,1}./1e3;
y2  = Kinetic.t1{3,1}{3,1}./1e3;
y3  = Kinetic.t1{3,1}{4,1};
y4  = Kinetic.t1{3,1}{5,1};
h(42) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta H (KJ/mol) ','fontsize',20)
title('Enthalpy','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta G (KJ/mol) ','fontsize',20)
title('Gibbs Energy','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta S (J/K)','fontsize',20)
title('Entropy','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,log(y4));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln Q_{\Theta} ','fontsize',20)
title('Reaction Quotient','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Thermodynamic Parameters for Perl','fontweight','bold','fontsize',28)
%% Plot 43
x   = Kinetic.k2{1,1}(:,1);
y1  = Kinetic.t1{4,1}{2,1}./1e3;
y2  = Kinetic.t1{4,1}{3,1}./1e3;
y3  = Kinetic.t1{4,1}{4,1};
y4  = Kinetic.t1{4,1}{5,1};
h(43) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta H (KJ/mol) ','fontsize',20)
title('Enthalpy','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta G (KJ/mol) ','fontsize',20)
title('Gibbs Energy','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta S (J/K)','fontsize',20)
title('Entropy','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,log(y4));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln Q_{\Theta} ','fontsize',20)
title('Reaction Quotient','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Thermodynamic Parameters for Wood','fontweight','bold','fontsize',28)
%% Plot 44
x   = Kinetic.k2{1,1}(:,1);
y1  = [Kinetic.t1{1,1}{2,1}(:,1),Kinetic.t1{2,1}{2,1}(:,1),Kinetic.t1{3,1}{2,1}(:,1),Kinetic.t1{4,1}{2,1}(:,1)]./1e3;
y2  = [Kinetic.t1{1,1}{3,1}(:,1),Kinetic.t1{2,1}{3,1}(:,1),Kinetic.t1{3,1}{3,1}(:,1),Kinetic.t1{4,1}{3,1}(:,1)]./1e3;
y3  = [Kinetic.t1{1,1}{4,1}(:,1),Kinetic.t1{2,1}{4,1}(:,1),Kinetic.t1{3,1}{4,1}(:,1),Kinetic.t1{4,1}{4,1}(:,1)];
y4  = [Kinetic.t1{1,1}{5,1}(:,1),Kinetic.t1{2,1}{5,1}(:,1),Kinetic.t1{3,1}{5,1}(:,1),Kinetic.t1{4,1}{5,1}(:,1)];
h(44) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta H (KJ/mol) ','fontsize',20)
title('Enthalpy','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta G (KJ/mol) ','fontsize',20)
title('Gibbs Energy','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta S (J/K)','fontsize',20)
title('Entropy','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,log(y4));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln Q_{\Theta} ','fontsize',20)
title('Reaction Quotient','fontweight','bold','fontsize',24)
lgd  = legend('Pine','Corn','Perl','Wood');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Thermodynamic Parameters for HR10','fontweight','bold','fontsize',28)
%% Plot 45
x   = Kinetic.k2{1,1}(:,1);
y1  = [Kinetic.t1{1,1}{2,1}(:,2),Kinetic.t1{2,1}{2,1}(:,2),Kinetic.t1{3,1}{2,1}(:,2),Kinetic.t1{4,1}{2,1}(:,2)]./1e3;
y2  = [Kinetic.t1{1,1}{3,1}(:,2),Kinetic.t1{2,1}{3,1}(:,2),Kinetic.t1{3,1}{3,1}(:,2),Kinetic.t1{4,1}{3,1}(:,2)]./1e3;
y3  = [Kinetic.t1{1,1}{4,1}(:,2),Kinetic.t1{2,1}{4,1}(:,2),Kinetic.t1{3,1}{4,1}(:,2),Kinetic.t1{4,1}{4,1}(:,2)];
y4  = [Kinetic.t1{1,1}{5,1}(:,2),Kinetic.t1{2,1}{5,1}(:,2),Kinetic.t1{3,1}{5,1}(:,2),Kinetic.t1{4,1}{5,1}(:,2)];
h(45) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta H (KJ/mol) ','fontsize',20)
title('Enthalpy','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta G (KJ/mol) ','fontsize',20)
title('Gibbs Energy','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta S (J/K)','fontsize',20)
title('Entropy','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,log(y4));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln Q_{\Theta} ','fontsize',20)
title('Reaction Quotient','fontweight','bold','fontsize',24)
lgd  = legend('Pine','Corn','Perl','Wood');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Thermodynamic Parameters for HR15','fontweight','bold','fontsize',28)
%% Plot 46
x   = Kinetic.k2{1,1}(:,1);
y1  = [Kinetic.t1{1,1}{2,1}(:,3),Kinetic.t1{2,1}{2,1}(:,3),Kinetic.t1{3,1}{2,1}(:,3),Kinetic.t1{4,1}{2,1}(:,3)]./1e3;
y2  = [Kinetic.t1{1,1}{3,1}(:,3),Kinetic.t1{2,1}{3,1}(:,3),Kinetic.t1{3,1}{3,1}(:,3),Kinetic.t1{4,1}{3,1}(:,3)]./1e3;
y3  = [Kinetic.t1{1,1}{4,1}(:,3),Kinetic.t1{2,1}{4,1}(:,3),Kinetic.t1{3,1}{4,1}(:,3),Kinetic.t1{4,1}{4,1}(:,3)];
y4  = [Kinetic.t1{1,1}{5,1}(:,3),Kinetic.t1{2,1}{5,1}(:,3),Kinetic.t1{3,1}{5,1}(:,3),Kinetic.t1{4,1}{5,1}(:,3)];
h(46) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x, y1);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta H (KJ/mol) ','fontsize',20)
title('Enthalpy','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y2);
xlim([0.11 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta G (KJ/mol) ','fontsize',20)
title('Gibbs Energy','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y3);
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf \Delta S (J/K)','fontsize',20)
title('Entropy','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,log(y4));
xlim([0.1 0.95])
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf ln Q_{\Theta} ','fontsize',20)
title('Reaction Quotient','fontweight','bold','fontsize',24)
lgd  = legend('Pine','Corn','Perl','Wood');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Thermodynamic Parameters for HR20','fontweight','bold','fontsize',28)
%% Plot 47
%%% Kinetic Error Plot
x  = Kinetic.e1{1,1};
y1 = Kinetic.e1{2,1};
y2 = Kinetic.e1{3,1};
y3 = Kinetic.e1{4,1};% 1 order less
h(47) = figure('Position', get(0, 'Screensize'));
plot(x,log(y1))
ylim([-25 0])
ax = gca; ax.FontSize = 16;
xlabel('\bf y = Ea/RT \rightarrow','fontsize',20)
ylabel('\bf Temperature Integral','fontsize',20)
title('Temperature Integral Approximations','fontweight','bold','fontsize',28)
lgd  = legend('Ei Analytic','Doyle','Starink','MurrayW','Lyons','Coats Redfern','Senum Yang','KAS');
lgd.FontSize = 20;
%% Plot 48
h(48) = figure('Position', get(0, 'Screensize'));
plot(x,y2)
ylim([-0.1 0.1])
ax = gca; ax.FontSize = 16;
xlabel('\bf y = Ea/RT \rightarrow','fontsize',20)
ylabel('\bf Theoretical \delta  Ea \rightarrow','fontsize',20)
title('Relative Error in Approximation wrt Ei Analytic','fontweight','bold','fontsize',28)
lgd  = legend('Doyle','Starink','MurrayW','Lyons','Coats Redfern','Senum Yang','KAS');
lgd.FontSize = 20;
%% Plot 49
h(49) = figure('Position', get(0, 'Screensize'));
plot(x(1:end-1),y3)
ylim([-0.015 0.025])
ax = gca; ax.FontSize = 16;
xlabel('\bf y = Ea/RT \rightarrow','fontsize',20)
ylabel('\bf Theoretical \delta  Ea \rightarrow','fontsize',20)
title('Relative Error in Ea wrt Ei Analytic','fontweight','bold','fontsize',28)
lgd  = legend('Doyle','Starink','MurrayW','Lyons','Coats Redfern','Senum Yang','KAS');
lgd.FontSize = 20;
%% Plot 50
x =  Kinetic.k2{1,1}(:,1);
y1 = min(SampleCell{1,1}.T) + (max(SampleCell{1,1}.T)-min(SampleCell{1,1}.T)).*x;
y2 = min(SampleCell{4,1}.T) + (max(SampleCell{4,1}.T)-min(SampleCell{4,1}.T)).*x;
y3 = min(SampleCell{7,1}.T) + (max(SampleCell{7,1}.T)-min(SampleCell{7,1}.T)).*x;
y4 = min(SampleCell{10,1}.T) + (max(SampleCell{10,1}.T)-min(SampleCell{10,1}.T)).*x;
x1 = Kinetic.k2{1,1}(:,2)./(8.3144598*y1);
x2 = Kinetic.k2{2,1}(:,2)./(8.3144598*y2);
x3 = Kinetic.k2{3,1}(:,2)./(8.3144598*y3);
x4 = Kinetic.k2{4,1}(:,2)./(8.3144598*y4);
h(50) = figure('Position', get(0, 'Screensize'));
plot(x,x1,x,x2,x,x3,x,x4)
ax = gca; ax.FontSize = 16;
xlabel('\bf \alpha \it Conversion fraction','fontsize',20)
ylabel('\bf y = Ea/RT \rightarrow','fontsize',20)
title('y values','fontweight','bold','fontsize',28)
lgd  = legend('Pine Needles','Corn Cob','Perl Millet','Wood');
lgd.FontSize = 20;
%% Plot 51
x1  = Kinetic.d1{1,1}(:,1);
y1  = Kinetic.d1{1,1}(:,2);
x2  = Kinetic.d1{2,1}(:,1);
y2  = Kinetic.d1{2,1}(:,2);
x3  = Kinetic.d1{3,1}(:,1);
y3  = Kinetic.d1{3,1}(:,2);
h(51) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
hline = refline(0,0);
hline.Color = 'm';
hline.LineStyle = '--';
hline.LineWidth = 0.75;
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Temperature','fontsize',20)
ylabel('\it \leftarrow Endothermic          \bf \delta T / \delta t (K/sec)           \rm \it \rightarrow Exothermic','fontsize',20)
title('Differential Thermal Analysis (DTA) for Pine','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 52
x1  = Kinetic.d1{4,1}(:,1);
y1  = smoothdata(filloutliers(Kinetic.d1{4,1}(:,2),'spline'));
x2  = Kinetic.d1{5,1}(:,1);
y2  = smoothdata(filloutliers(Kinetic.d1{5,1}(:,2),'spline'));
x3  = Kinetic.d1{6,1}(:,1);
y3  = smoothdata(filloutliers(Kinetic.d1{6,1}(:,2),'spline'));
h(52) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
hline = refline(0,0);
hline.Color = 'm';
hline.LineStyle = '--';
hline.LineWidth = 0.75;
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Temperature','fontsize',20)
ylabel('\it \leftarrow Endothermic          \bf \delta T / \delta t (\muV/sec)           \rm \it \rightarrow Exothermic','fontsize',20)
title('Differential Thermal Analysis (DTA) for Corn','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 53
x1  = Kinetic.d1{7,1}(:,1);
y1  = smoothdata(filloutliers(Kinetic.d1{7,1}(:,2),'spline'));
x2  = Kinetic.d1{8,1}(:,1);
y2  = smoothdata(filloutliers(Kinetic.d1{8,1}(:,2),'spline'));
x3  = Kinetic.d1{9,1}(:,1);
y3  = smoothdata(filloutliers(Kinetic.d1{9,1}(:,2),'spline'));
h(53) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
hline = refline(0,0);
hline.Color = 'm';
hline.LineStyle = '--';
hline.LineWidth = 0.75;
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Temperature','fontsize',20)
ylabel('\it \leftarrow Endothermic          \bf \delta T / \delta t (\muV/sec)           \rm \it \rightarrow Exothermic','fontsize',20)
title('Differential Thermal Analysis (DTA) for Perl','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 54
x1  = Kinetic.d1{10,1}(:,1);
y1  = smoothdata(filloutliers(Kinetic.d1{10,1}(:,2),'spline'));
x2  = Kinetic.d1{11,1}(:,1);
y2  = smoothdata(filloutliers(Kinetic.d1{11,1}(:,2),'spline'));
x3  = Kinetic.d1{12,1}(:,1);
y3  = smoothdata(filloutliers(Kinetic.d1{12,1}(:,2),'spline'));
h(54) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
hline = refline(0,0);
hline.Color = 'm';
hline.LineStyle = '--';
hline.LineWidth = 0.75;
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Temperature','fontsize',20)
ylabel('\it \leftarrow Endothermic          \bf \delta T / \delta t (\muV/sec)           \rm \it \rightarrow Exothermic','fontsize',20)
title('Differential Thermal Analysis (DTA) for Wood','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 55
x1  = Kinetic.d1{1,1}(:,1);
y1  = smoothdata(filloutliers(abs(Kinetic.d1{1,1}(:,3)),'spline'));
x2  = Kinetic.d1{2,1}(:,1);
y2  = smoothdata(filloutliers(abs(Kinetic.d1{2,1}(:,3)),'spline'));
x3  = Kinetic.d1{3,1}(:,1);
y3  = smoothdata(filloutliers(abs(Kinetic.d1{3,1}(:,3)),'spline'));
x4  = Kinetic.d1{13,1}(:,1);
y4  = smoothdata(filloutliers(abs(Kinetic.d1{13,1}(:,3)),'spline'));
x5  = Kinetic.d1{14,1}(:,1);
y5  = smoothdata(filloutliers(abs(Kinetic.d1{14,1}(:,3)),'spline'));
h(55) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3,x4,y4,x5,y5);
ylim([0 2])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Temperature','fontsize',20)
ylabel('\bf Cp (KJ/(kg\cdotK) \it Specific Heat Capacity','fontsize',20)
title('Specific Heat Capacity from DTA & DSC','fontweight','bold','fontsize',24)
lgd  = legend('Pine10','Pine15','Pine20','Mill10','Swt10');
lgd.FontSize = 20;
%% Plot 56
x1  = Kinetic.d1{1,1}(:,1);
y1  = Kinetic.d1{1,1}(:,4)./1e3;
x2  = Kinetic.d1{2,1}(:,1);
y2  = Kinetic.d1{2,1}(:,4)./1e3;
x3  = Kinetic.d1{3,1}(:,1);
y3  = Kinetic.d1{3,1}(:,4)./1e3;
x4  = Kinetic.d1{13,1}(:,1);
y4  = Kinetic.d1{13,1}(:,4)./1e3;
x5  = Kinetic.d1{14,1}(:,1);
y5  = Kinetic.d1{14,1}(:,4)./1e3;
h(56) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3,x4,y4,x5,y5);
ax = gca; ax.FontSize = 16;
dim = [0.2 0.5 0.3 0.3];
str = {'      \it Total Heat Required','\rm \bfSample        \Sigma \DeltaHf (KJ/Kg)'...
                                      ,'\rm Pine10               18.227'...
                                      ,'\rm Pine15               13.517'...
                                      ,'\rm Pine20               12.660'...
                                      ,'\rm Mill10               -16.214'...
                                      ,'\rm Swt10              -18.180'};
a = annotation('textbox',dim,'String',str,'FitBoxToText','on');
a.FontSize = 16;
xlabel('\bf T \it Temperature','fontsize',20)
ylabel('\bf \Delta Hf (kJ/Kg) \it Total Heat Flow','fontsize',20)
title('Differential Scanning Calorimetry (DSC)','fontweight','bold','fontsize',24)
lgd  = legend('Pine10','Pine15','Pine20','Mill10','Swt10');
lgd.FontSize = 20;
%% Plot 57
x1  = Smod(1).Tn;
y1  = Smod(1).da;
x2  = Smod(2).Tn;
y2  = Smod(2).da;
x3  = Smod(3).Tn;
y3  = Smod(3).da;
h(57) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
xlim([0 1])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
title('Differential Thermal Gravimetric (DTG) for Pine','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 58
x1  = Smod(4).Tn;
y1  = Smod(4).da;
x2  = Smod(5).Tn;
y2  = Smod(5).da;
x3  = Smod(6).Tn;
y3  = Smod(6).da;
h(58) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
xlim([0 1])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
title('Differential Thermal Gravimetric (DTG) for Corn','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 59
x1  = Smod(7).Tn;
y1  = Smod(7).da;
x2  = Smod(8).Tn;
y2  = Smod(8).da;
x3  = Smod(9).Tn;
y3  = Smod(9).da;
h(59) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
xlim([0 1])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
title('Differential Thermal Gravimetric (DTG) for Perl','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 60
x1  = Smod(10).Tn;
y1  = Smod(10).da;
x2  = Smod(11).Tn;
y2  = Smod(11).da;
x3  = Smod(12).Tn;
y3  = Smod(12).da;
h(60) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2,x3,y3);
xlim([0 1])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
title('Differential Thermal Gravimetric (DTG) for Wood','fontweight','bold','fontsize',24)
lgd  = legend('HR10','HR15','HR20');
lgd.FontSize = 20;
%% Plot 61
x1  = Smod(13).Tn;
y1  = Smod(13).da;
x2  = Smod(14).Tn;
y2  = Smod(14).da;
h(61) = figure('Position', get(0, 'Screensize'));
plot(x1,y1,x2,y2);
xlim([0 1])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
title('Differential Thermal Gravimetric (DTG)','fontweight','bold','fontsize',24)
lgd  = legend('Mill10','Swt10');
lgd.FontSize = 20;
%% Plot 62+3i where i=0,1,2... 13.
%%% ALL Deconvolution
h = zeros();           
for ii=0:13
n=ii+1;
x = Smod(n).Tn;
y = Smod(n).da;
h(62+3*ii) = figure('Position', get(0, 'Screensize'));
    for i = 1:3
        a = MixModel.a.coeff{n,1}(1,i);
        b = MixModel.a.coeff{n,1}(2,i);
        c = MixModel.a.coeff{n,1}(3,i);
        if i==1
            fun1 = @(x) a*exp(-((x-b)/c).^2);
        elseif i==2
            fun2 = @(x) a*exp(-((x-b)/c).^2);
        else
            fun3 = @(x) a*exp(-((x-b)/c).^2);
        end
    end
plot(x,y,'LineWidth',0.75)
hold on
plot(x,fun1(x),'LineWidth',2)
plot(x,fun2(x),'LineWidth',2)
plot(x,fun3(x),'LineWidth',2)
hold off
xlim([0.15 0.75])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
t = title(sprintf('Gaussian Mixture Deconvolution for Sample %i',n));
t.FontSize = 24;
t.FontWeight = 'bold';
        if n==1
            lgd  = legend('Original DTG','Cellulose','Lignin','Hemicellulose');
        elseif n==2
            lgd  = legend('Original DTG','Cellulose','Lignin','Hemicellulose');
        else
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        end
lgd.FontSize = 20;
%% Plot 63+3i where i=0,1,2... 13.
x = Smod(n).Tn;
y = Smod(n).da;
h(63+3*ii) = figure('Position', get(0, 'Screensize'));
    for i = 1:3
            a = MixModel.b.coeff{n,1}(1,i);
            b = MixModel.b.coeff{n,1}(2,i);
            c = MixModel.b.coeff{n,1}(3,i);
            d = MixModel.b.coeff{n,1}(4,i);
        if i==1
            fun1 = @(x) a*exp(-((x-b)./c).^2).*(1+erf(d.*(x-b)./c));
        elseif i==2
            fun2 = @(x) a*exp(-((x-b)./c).^2).*(1+erf(d.*(x-b)./c));
        else
            fun3 = @(x) a*exp(-((x-b)./c).^2).*(1+erf(d.*(x-b)./c));
        end
    end
plot(x,y,'LineWidth',0.75)
hold on
plot(x,fun1(x),'LineWidth',2)
plot(x,fun2(x),'LineWidth',2)
plot(x,fun3(x),'LineWidth',2)
hold off
xlim([0.15 0.75])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
t = title(sprintf('Skew Gaussian Mixture Deconvolution for Sample %i',n));
t.FontSize = 24;
t.FontWeight = 'bold';
        if n==1
            lgd  = legend('Original DTG','Hemicellulose','Lignin','Cellulose');
        elseif n==2
            lgd  = legend('Original DTG','Cellulose','Hemicellulose','Lignin');
        else
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        end
lgd.FontSize = 20;
%% Plot 64+3i where i=0,1,2... 13.
x = Smod(n).Tn;
y = Smod(n).da;
h(64+3*ii) = figure('Position', get(0, 'Screensize'));
    for i = 1:3
            a = MixModel.c.coeff{n,1}(1,i);
            b = MixModel.c.coeff{n,1}(2,i);
            c = MixModel.c.coeff{n,1}(3,i);
        if i==1
            fun1 = @(x) a*(b./c)*(x./c).^(b-1).*exp(-(x./c).^b);
        elseif i==2
            fun2 = @(x) a*(b./c)*(x./c).^(b-1).*exp(-(x./c).^b);
        else
            fun3 = @(x) a*(b./c)*(x./c).^(b-1).*exp(-(x./c).^b);
        end
    end
plot(x,y,'LineWidth',0.75)
hold on
plot(x,fun1(x),'LineWidth',2)
plot(x,fun2(x),'LineWidth',2)
plot(x,fun3(x),'LineWidth',2)
hold off
xlim([0.15 0.75])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
t = title(sprintf('Weibull Mixture Deconvolution for Sample %i',n));
t.FontSize = 24;
t.FontWeight = 'bold';
        if n==1
            lgd  = legend('Original DTG','Lignin','Cellulose','Hemicellulose');
        elseif n==2
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==3
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==4
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==5
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==6
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==7
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==8
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==9
            lgd  = legend('Original DTG','Cellulose','Hemicellulose','Lignin');
        elseif n==10
            lgd  = legend('Original DTG','Cellulose','Hemicellulose','Lignin');
        elseif n==11
            lgd  = legend('Original DTG','Lignin','Cellulose','Hemicellulose');
        elseif n==12
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        elseif n==13
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        else
            lgd  = legend('Original DTG','Hemicellulose','Cellulose','Lignin');
        end
lgd.FontSize = 20;
end
%% Plot 104+3i where i=0,1,2... 13.
for ii=0:13
n=ii+1;
x = Smod(n).Tn;
y = Smod(n).da;
h(104+3*ii) = figure('Position', get(0, 'Screensize'));
        am = MixModel.am.coeff{n,1}(1);
        bm = MixModel.am.coeff{n,1}(2);
        cm = MixModel.am.coeff{n,1}(3);
        funm = @(x) am*exp(-((x-bm)/cm).^2);
plot(x,y,'LineWidth',0.75)
hold on
plot(x,funm(x),'LineWidth',2)
hold off
xlim([0 0.15])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
t = title(sprintf('Gaussian Mixture Moisture Fit for Sample %i',n));
t.FontSize = 24;
t.FontWeight = 'bold';
lgd  = legend('Original DTG','Moisture');
lgd.FontSize = 20;
%% Plot 105+3i where i=0,1,2... 13.
x = Smod(n).Tn;
y = Smod(n).da;
h(105+3*ii) = figure('Position', get(0, 'Screensize'));
        am = MixModel.bm.coeff{n,1}(1);
        bm = MixModel.bm.coeff{n,1}(2);
        cm = MixModel.bm.coeff{n,1}(3);
        dm = MixModel.bm.coeff{n,1}(4);
        funm = @(x) am.*exp(-((x-bm)./cm).^2).*(1+erf(dm.*(x-bm)./cm));
plot(x,y,'LineWidth',0.75)
hold on
plot(x,funm(x),'LineWidth',2)
hold off
xlim([0 0.15])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
t = title(sprintf('Skew Gaussian Mixture Moisture Fit for Sample %i',n));
t.FontSize = 24;
t.FontWeight = 'bold';
lgd  = legend('Original DTG','Moisture');
lgd.FontSize = 20;
%% Plot 106+3i where i=0,1,2... 13.
x = Smod(n).Tn;
y = Smod(n).da;
h(106+3*ii) = figure('Position', get(0, 'Screensize'));
        am = MixModel.cm.coeff{n,1}(1);
        bm = MixModel.cm.coeff{n,1}(2);
        cm = MixModel.cm.coeff{n,1}(3);
        funm = @(x) am.*(bm./cm).*(x./cm).^(bm-1).*exp(-(x./cm).^bm);
plot(x,y,'LineWidth',0.75)
hold on
plot(x,funm(x),'LineWidth',2)
hold off
xlim([0 0.15])
ax = gca; ax.FontSize = 16;
xlabel('\bf T \it Normalised','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
t = title(sprintf('Weibull Mixture Moisture Fit for Sample %i',n));
t.FontSize = 24;
t.FontWeight = 'bold';
lgd  = legend('Original DTG','Moisture');
lgd.FontSize = 20;
end
%% Plot 146
% General model Gauss5:
x = Smod(10).T;
y = Smod(10).da;
h(146) = figure('Position', get(0, 'Screensize'));
       a1 =     0.06845;%  (0.06801, 0.0689)
       b1 =       608.6;%  (608.6, 608.7)
       c1 =       12.22;%  (12.12, 12.31)
       a2 =     0.04016;%  (0.03992, 0.0404)
       b2 =       573.8;%  (573.2, 574.3)
       c2 =       50.32;%  (49.79, 50.84)
       a3 =     0.01013;%  (0.009884, 0.01037)
       b3 =       431.7;%  (431.4, 432)
       c3 =       15.85;%  (15.4, 16.29)
       a4 =     0.02616;%  (0.02554, 0.02679)
       b4 =         744;%  (743.8, 744.2)
       c4 =       23.89;%  (23.43, 24.35)
       a5 =     0.02144;%  (0.02129, 0.0216)
       b5 =       684.7;%  (683.7, 685.7)
       c5 =        59.9;%  (57.96, 61.84)
       a6 =    0.008777;%  (0.00863, 0.008925)
       b6 =       932.4;%  (931.8, 932.9)
       c6 =       42.51;%  (41.68, 43.34)
y1 = a1*exp(-((x-b1)/c1).^2);
y2 = a2*exp(-((x-b2)/c2).^2);
y3 = a3*exp(-((x-b3)/c3).^2);
y4 = a4*exp(-((x-b4)/c4).^2);
y5 = a5*exp(-((x-b5)/c5).^2);
y6 = a6*exp(-((x-b6)/c6).^2);
% Goodness of fit:
%   SSE: 0.025
%   R-square: 0.9912
%   Adjusted R-square: 0.9912
%   RMSE: 0.00156
plot(x, y,'LineWidth',0.5)
hold on
plot(x,y1,'LineWidth',2)
plot(x,y2,'LineWidth',2)
plot(x,y3,'LineWidth',2)
plot(x,y4,'LineWidth',2)
plot(x,y5,'LineWidth',2)
plot(x,y6,'LineWidth',2)
hold off
xlim([400 1100]);
ylim([-0.01 0.105]);
ax = gca; ax.FontSize = 16;
xlabel('\bf T (K) \it Temperature','fontsize',20)
ylabel('\bf d\alpha/dt (min^{-1}) \it Rate of Conversion','fontsize',20)
title('Multi Variate Analysis of Eucalyptus Wood','fontweight','bold','fontsize',24)
lgd  = legend('Original','Cellulose','HemiCellulose','Pectin','Unidentified','Lignin 1','Lignin 2');
lgd.FontSize = 20;
%% Plot 147
% Bias Variance Tradeoff
x = (100:25:1500)';
y = [Error.TotalError]';
h(147) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
hold on
plot(x,smooth(y(:,1)),'r','LineWidth',1)
plot(Error.filstr(1),Error.min(1),'ro','Markersize',10)
plot(x,smooth(y(:,2)),'g','LineWidth',1)
plot(Error.filstr(2),Error.min(2),'go','Markersize',10)
plot(x,smooth(y(:,3)),'b','LineWidth',1)
plot(Error.filstr(3),Error.min(3),'bo','Markersize',10)
hold off
ax = gca; ax.FontSize = 16;
xlabel('\bf \eta \it Sgolay Filter Strength','fontsize',20)
ylabel('\bf Total Error = Bias^{2} + \sigma^{2}','fontsize',20)
title('Pine Needles','fontweight','bold','fontsize',24)
subplot(2,2,2)
hold on
plot(x,smooth(y(:,4)),'r','LineWidth',1)
plot(Error.filstr(4),Error.min(4),'ro','Markersize',10)
plot(x,smooth(y(:,5)),'g','LineWidth',1)
plot(Error.filstr(5),Error.min(5),'go','Markersize',10)
plot(x,smooth(y(:,6)),'b','LineWidth',1)
plot(Error.filstr(6),Error.min(6),'bo','Markersize',10)
hold off
ax = gca; ax.FontSize = 16;
xlabel('\bf \eta \it Sgolay Filter Strength','fontsize',20)
ylabel('\bf Total Error = Bias^{2} + \sigma^{2}','fontsize',20)
title('Corn Cob','fontweight','bold','fontsize',24)
subplot(2,2,3)
hold on
plot(x,smooth(y(:,7)),'r','LineWidth',1)
plot(Error.filstr(7),Error.min(7),'ro','Markersize',10)
plot(x,smooth(y(:,8)),'g','LineWidth',1)
plot(Error.filstr(8),Error.min(8),'go','Markersize',10)
plot(x,smooth(y(:,9)),'b','LineWidth',1)
plot(Error.filstr(9),Error.min(9),'bo','Markersize',10)
hold off
ax = gca; ax.FontSize = 16;
xlabel('\bf \eta \it Sgolay Filter Strength','fontsize',20)
ylabel('\bf Total Error = Bias^{2} + \sigma^{2}','fontsize',20)
title('Perl Millet','fontweight','bold','fontsize',24)
subplot(2,2,4)
hold on
plot(x,smooth(y(:,10)),'r','LineWidth',1)
plot(Error.filstr(10),Error.min(10),'ro','Markersize',10)
plot(x,smooth(y(:,11)),'g','LineWidth',1)
plot(Error.filstr(11),Error.min(11),'go','Markersize',10)
plot(x,smooth(y(:,12)),'b','LineWidth',1)
plot(Error.filstr(12),Error.min(12),'bo','Markersize',10)
hold off
ax = gca; ax.FontSize = 16;
xlabel('\bf \eta \it Sgolay Filter Strength','fontsize',20)
ylabel('\bf Total Error = Bias^{2} + \sigma^{2}','fontsize',20)
title('Wood','fontweight','bold','fontsize',24)
sgtitle('Bias Variance Tradeoff','fontweight','bold','fontsize',28)
%% Plot 148
x = (100:25:1500)';
y = [Error.TotalError]';
h(148) = figure('Position', get(0, 'Screensize'));
hold on
plot(x,smooth(y(:,13)),'r','LineWidth',1)
plot(Error.filstr(13),Error.min(13),'ro','Markersize',10)
plot(x,smooth(y(:,14)),'b','LineWidth',1)
plot(Error.filstr(14),Error.min(14),'bo','Markersize',10)
ax = gca; ax.FontSize = 16;
xlabel('\bf \eta \it Sgolay Filter Strength','fontsize',20)
ylabel('\bf Total Error = Bias^{2} + \sigma^{2}','fontsize',20)
lgd  = legend('Millet','Mill_{Min}','Sweet','Swt_{Min}');
lgd.FontSize = 20;
title('Bias Variance Tradeoff','fontweight','bold','fontsize',24)
%% Plot 149
x = (100:25:1500)';
y = [Error.TotalError]';
h(149) = figure('Position', get(0, 'Screensize'));
histogram(Error.filstr,7)
ax = gca; ax.FontSize = 16;
xlabel('\bf \eta \it Sgolay Filter Strength','fontsize',20)
ylabel('\bf Frequency of \eta','fontsize',20)
title('Most Usable Filter Strength','fontweight','bold','fontsize',24)
%% Plot 150
x = (1:1:14)';
y1 = zeros(14,3);
y2 = zeros(14,3);
y3 = zeros(14,3);
y4 = zeros(14,3);
for i =1:14
    y1(i,:) = [MixModel.a.gof{i,1}.rsquare, MixModel.b.gof{i,1}.rsquare, MixModel.c.gof{i,1}.rsquare];
    y2(i,:) = [MixModel.am.gof{i,1}.rsquare, MixModel.bm.gof{i,1}.rsquare, MixModel.cm.gof{i,1}.rsquare];
    y3(i,:) = [MixModel.a.gof{i,1}.rmse, MixModel.b.gof{i,1}.rmse, MixModel.c.gof{i,1}.rmse];
    y4(i,:) = [MixModel.am.gof{i,1}.rmse, MixModel.bm.gof{i,1}.rmse, MixModel.cm.gof{i,1}.rmse];
end
h(150) = figure('Position', get(0, 'Screensize'));
subplot(2,2,1)
plot(x,y1)
ax = gca; ax.FontSize = 16;
xlabel('\bf Samples \it 1 to 14','fontsize',20)
ylabel('\bf R^{2}','fontsize',20)
title('DTG Deconvolution','fontweight','bold','fontsize',24)
subplot(2,2,2)
plot(x,y3)
ax = gca; ax.FontSize = 16;
xlabel('\bf Samples \it 1 to 14','fontsize',20)
ylabel('\bf RMSE','fontsize',20)
title('DTG Deconvolution','fontweight','bold','fontsize',24)
subplot(2,2,3)
plot(x,y2)
ax = gca; ax.FontSize = 16;
xlabel('\bf Samples \it 1 to 14','fontsize',20)
ylabel('\bf R^{2}','fontsize',20)
title('Moisture Fit','fontweight','bold','fontsize',24)
subplot(2,2,4)
plot(x,y4)
ax = gca; ax.FontSize = 16;
xlabel('\bf Samples \it 1 to 14','fontsize',20)
ylabel('\bf RMSE','fontsize',20)
title('Moisture Fit','fontweight','bold','fontsize',24)
lgd  = legend('Gaussian','Skew Gauss','Weibull');
set(lgd,'Position', [0.89 0.7 0.1 0.2],'Units', 'normalized');
lgd.FontSize = 20;
sgtitle('Goodness of Fit Statistics','fontweight','bold','fontsize',28)
%% Saving All Plots
n=150;
for i=1:n
 saveas(h(i),fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(i) '.png']));
end
%}
%% Clear Var and Presets
set(groot, 'DefaultFigureVisible', 'on')
clear a b c am bm cm d dm x y funm i lgd ax i h n hline p dim str a t ii f
clearvars -regexp ^y\d{1}$
clearvars -regexp ^x\d{1}$
clearvars -regexp ^a\d{1}$
clearvars -regexp ^b\d{1}$
clearvars -regexp ^c\d{1}$
clearvars -regexp ^y\d{2}$
clearvars -regexp ^fun\d{1}$