clear all; close all; clc;
fc=1e4;
fs = 1e7;
for n=1:2
tc = gmonopuls('cutoff',fc);
t{n}  = -3*tc:1/fs:3*tc;
y{n} = gmonopuls(t{n}+(n-1)*5e-6,fc);
 fc=fc+1e3;
end
% plot(t{1},y{1},'r',t{2},y{2},'k','LineWidth',1)
% figure
% plot(y{1},y{2});
% xlim([-7e-4 7e-4])
% figure
y1=[0, y{1},0];
y2=interp1(t{2},y{2},t{1},'pchip');
y2i=[0,y2,0];
plot(t{1},y{1},'r',t{2},y{2},'k','LineWidth',1)
xlim([-7e-5 7e-5])
set(gca,'XTickLabels',{})
set(gca,'YTickLabels',{})
xlabel('Time');
ylabel('Waveform');
legend('X','Y');
set(gca,'FontSize',18);
figure

plot(y1,y2i,'b','LineWidth',1.5);
set(gca,'XTickLabels',{})
set(gca,'YTickLabels',{})
xlabel('X', 'Color','r');
ylabel('Y');
set(gca,'FontSize',18);

% plot(t1,y1)
% hold on
% plot(t1,y2u)
% figure
% plot(y2u,y1)
% 
% 
% 

