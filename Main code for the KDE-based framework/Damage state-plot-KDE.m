
H1=plot(xi,sort(Probability_1)-sort(Probability_2),'color',[0.8 0.8 0.8],'LineWidth',2); hold on;
H2=plot(xi,sort(Probability_2)-sort(Probability_3),'color',[0.5 0.5 0.5],'LineWidth',2,'LineStyle','--'); hold on;
H3=plot(xi,sort(Probability_3)-sort(Probability_4),'color',[0.2 0.2 0.2],'LineWidth',2,'LineStyle',':'); hold on;
H4=plot(xi,sort(Probability_4),'color','k','LineWidth',2); hold on;

DM1_MIDR_STRU=sort(Probability_1)-sort(Probability_2);
DM2_MIDR_STRU=sort(Probability_2)-sort(Probability_3);
DM3_MIDR_STRU=sort(Probability_3)-sort(Probability_4);
DM4_MIDR_STRU=sort(Probability_4);


xlabel('Intensity level (g)','FontSize',13,'FontName','Times New Roman');
ylabel('Damage state probability','FontSize',13,'FontName','Times New Roman');

xlim([0,2]);
ylim([0,0.8]);
set(gca,'XTick',0:0.5:2);
set(gca,'YTick',0:0.1:0.8);

set(gca,'FontName','Times New Roman','FontSize',13)


legend([H1,H2,H3,H4],{'DS1';'DS2';'DS3';'DS4'},'Fontsize',11,'LineWidth',0.5,'Location','southeast');

hh=annotation('textbox',[0.13,0.85,0.9,0.05],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Damage state probability for structural group of RCF 3-6');
set(hh,'FontName','Times New Roman','Fontsize',11);

hh=annotation('textbox',[0.13,0.8,0.9,0.05],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Stochastic cloud number=200');
set(hh,'FontName','Times New Roman','Fontsize',11);

