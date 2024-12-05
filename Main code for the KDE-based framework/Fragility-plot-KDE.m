
H1=plot(xi,sort(Probability_1),'color',[0.8 0.8 0.8],'LineWidth',2); hold on;
H2=plot(xi,sort(Probability_2),'color',[0.5 0.5 0.5],'LineWidth',2,'LineStyle','--'); hold on;
H3=plot(xi,sort(Probability_3),'color',[0.2 0.2 0.2],'LineWidth',2,'LineStyle',':'); hold on;
H4=plot(xi,sort(Probability_4),'color','k','LineWidth',2); hold on;


xlabel('Intensity level (g)','FontSize',13,'FontName','Times New Roman');
ylabel('Exceeding probability P(DM|IM)','FontSize',13,'FontName','Times New Roman');

xlim([0,2]);
ylim([0,1.2]);
set(gca,'XTick',0:0.5:2);
set(gca,'YTick',0:0.2:1.2);

set(gca,'FontName','Times New Roman','FontSize',13)


plot([0,2],[0.5,0.5],'color','k','LineWidth',0.5,'LineStyle','--'); hold on;
legend([H1,H2,H3,H4],{'LS1';'LS2';'LS3';'LS4'},'Fontsize',11,'LineWidth',0.5,'Location','southeast');


hh=annotation('textbox',[0.13,0.85,0.9,0.05],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','P(DM|IM) for structural group of RCF 3-6');
set(hh,'FontName','Times New Roman','Fontsize',11);

hh=annotation('textbox',[0.13,0.8,0.9,0.05],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Stochastic cloud number=200');
set(hh,'FontName','Times New Roman','Fontsize',11);
