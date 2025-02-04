% Plots for COVID Study

clear; close all; clc

    % time = linspace(0,24,2880); % Original Time

% Time Flip
t1 = linspace(0,12,1440);
t2 = linspace(12,24,1440);
time = t2;
time(1,1441:2880) = t1;

% Data Read
may_7 = transpose(xlsread('data.xlsx','C2:C2881')); % May 7th
t_may_7 = time(1,1:length(may_7));


may_8 = transpose(xlsread('data.xlsx','D2:D2881')); % May 8th
t_may_8 = time(1,1:length(may_8));


may_9 = transpose(xlsread('data.xlsx','E2:E2881')); % May 9th
t_may_9 = time(1,1:length(may_9));


may_10 = transpose(xlsread('data.xlsx','F2:F2881')); % May 10th
t_may_10 = time(1,1:length(may_10));


may_12 = transpose(xlsread('data.xlsx','G2:G2881')); % May 12th
t_may_12 = time(1,1:length(may_12));


may_13 = transpose(xlsread('data.xlsx','H2:H2881')); % May 13th
t_may_13 = time(1,1:length(may_13));


may_14 = transpose(xlsread('data.xlsx','I2:I2881')); % May 14th
t_may_14 = time(1,1:length(may_14));



%% Plots

plot(t_may_7,may_7,'r','LineWidth',1)
title('PM2.5 Concentration May 7th','FontSize',16)
xlabel('Time (Hours)','FontSize',16)
ylabel('PM2.5 (units)','FontSize',16)
axis([0 24 30 2100])
legend('May 7th')
%hold on

set(gcf,'position',[0,10,1000,400])
set(gca,'xtick',0:2:24)
xticklabels({'12:00 AM','2:00 AM','4:00 AM','6:00 AM','8:00 AM','10:00 AM','12:00 PM','2:00 PM','4:00 PM','6:00 PM','8:00 PM','10:00 PM'})
grid on
figure(2)
plot(t_may_8,may_8,'k','LineWidth',1)
title('PM2.5 Concentration May 8th','FontSize',16)
xlabel('Time (Hours)','FontSize',16)
ylabel('PM2.5 (units)','FontSize',16)
axis([0 24 30 2100])
legend('May 8th')
set(gcf,'position',[0,10,1000,400])
set(gca,'xtick',0:2:24)
xticklabels({'12:00 AM','2:00 AM','4:00 AM','6:00 AM','8:00 AM','10:00 AM','12:00 PM','2:00 PM','4:00 PM','6:00 PM','8:00 PM','10:00 PM'})
grid on

figure(3)
plot(t_may_9,may_9,'m','LineWidth',1)
title('PM2.5 Concentration May 9th','FontSize',16)
xlabel('Time (Hours)','FontSize',16)
ylabel('PM2.5 (units)','FontSize',16)
axis([0 24 30 2100])
legend('May 9th')
set(gcf,'position',[0,10,1000,400])
set(gca,'xtick',0:2:24)
xticklabels({'12:00 AM','2:00 AM','4:00 AM','6:00 AM','8:00 AM','10:00 AM','12:00 PM','2:00 PM','4:00 PM','6:00 PM','8:00 PM','10:00 PM'})
grid on

figure(4)
plot(t_may_10,may_10,'g','LineWidth',1)
title('PM2.5 Concentration May 10th','FontSize',16)
xlabel('Time (Hours)','FontSize',16)
ylabel('PM2.5 (units)','FontSize',16)
axis([0 24 30 2100])
legend('May 10th')
set(gcf,'position',[0,10,1000,400])
set(gca,'xtick',0:2:24)
xticklabels({'12:00 AM','2:00 AM','4:00 AM','6:00 AM','8:00 AM','10:00 AM','12:00 PM','2:00 PM','4:00 PM','6:00 PM','8:00 PM','10:00 PM'})
grid on


figure(5)
plot(t_may_12,may_12,'LineWidth',1)
title('PM2.5 Concentration May 12th','FontSize',16)
xlabel('Time (Hours)','FontSize',16)
ylabel('PM2.5 (units)','FontSize',16)
axis([0 24 30 2100])
legend('May 12th')
set(gcf,'position',[0,10,1000,400])
set(gca,'xtick',0:2:24)
xticklabels({'12:00 AM','2:00 AM','4:00 AM','6:00 AM','8:00 AM','10:00 AM','12:00 PM','2:00 PM','4:00 PM','6:00 PM','8:00 PM','10:00 PM'})
grid on

figure(6)
plot(t_may_13,may_13,'b','LineWidth',1)
title('PM2.5 Concentration May 13th','FontSize',16)
xlabel('Time (Hours)','FontSize',16)
ylabel('PM2.5 (units)','FontSize',16)
axis([0 24 30 2100])
legend('May 13th')
set(gcf,'position',[0,10,1000,400])
set(gca,'xtick',0:2:24)
xticklabels({'12:00 AM','2:00 AM','4:00 AM','6:00 AM','8:00 AM','10:00 AM','12:00 PM','2:00 PM','4:00 PM','6:00 PM','8:00 PM','10:00 PM'})
grid on

figure(7)
plot(t_may_14,may_14,'c','LineWidth',1)
title('PM2.5 Concentration May 14th','FontSize',16)
xlabel('Time (Hours)','FontSize',16)
ylabel('PM2.5 (units)','FontSize',16)
axis([0 24 30 2100])
legend('May 14th')
set(gcf,'position',[0,10,1000,400])
set(gca,'xtick',0:2:24)
xticklabels({'12:00 AM','2:00 AM','4:00 AM','6:00 AM','8:00 AM','10:00 AM','12:00 PM','2:00 PM','4:00 PM','6:00 PM','8:00 PM','10:00 PM'})
grid on


print('figure.png','-dpng')

