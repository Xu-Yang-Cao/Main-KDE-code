surf(gridx1,gridx2,BB);shading interp
xlabel('Intensity level (g)','rotation',49,'FontSize',13,'FontName','Times New Roman','Position',[0.3 -0.04 -0.7]);
ylabel('MIDR','rotation',-23,'FontSize',13,'FontName','Times New Roman','Position',[-0.4 0.06 1]);
zlabel('Joint PDF','FontSize',13,'FontName','Times New Roman');

set(gca,'XTick',0:0.5:2);
set(gca,'YTick',0:0.05:0.2);
set(gca,'ZTick',0:4:40);

set(gca,'FontName','Times New Roman','FontSize',13)
box
colorbar
colormap(jet)
view(-54,63)

hh1=annotation('textbox',[0.43,0.9,0.9,0.05],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Stochastic cloud-number=200');
hh2=annotation('textbox',[0.53,0.83,0.9,0.05],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','RCF 3-6 MIDR group');
set(hh1,'FontName','Times New Roman','Fontsize',13);
set(hh2,'FontName','Times New Roman','Fontsize',13);
