
H1=plot(IM_level,[0;L_C_ave_mean],'o','color','k','LineWidth',3,'LineStyle','-'); hold on;
H2=plot(IM_level,[0;L_D_ave_mean],'o','color','b','LineWidth',3,'LineStyle','-'); hold on;
H3=plot(IM_level,[0;L_R_STRU_ave_mean],'o','color','m','LineWidth',3,'LineStyle','-'); hold on;
H4=plot(IM_level,[0;L_R_MIDR_non_ave_mean],'o','color',[0.667 0.667 0.667],'LineWidth',3,'LineStyle','-'); hold on;
H5=plot(IM_level,[0;L_R_PFA_non_ave_mean],'o','color',[0.667 1 0.667],'LineWidth',3,'LineStyle','-'); hold on;
H6=plot(IM_level,[0;(L_C_ave_mean+L_D_ave_mean+L_R_STRU_ave_mean+L_R_MIDR_non_ave_mean+L_R_PFA_non_ave_mean)],'o','color','r','LineWidth',3,'LineStyle','-');


xlim([0,2]);
ylim([0,100]);
set(gca,'XTick',0:0.2:2);
set(gca,'YTick',0:20:100);

set(gca,'FontName','Times New Roman','FontSize',13)

xlabel('Intensity level (g)','FontSize',13,'FontName','Times New Roman');
ylabel('Expected loss ratio and group disaggregation','FontSize',13,'FontName','Times New Roman');


legend([H1,H2,H3,H4,H5,H6],{'Collapse','Demolition','Repair-structural','Repair-nonstructural (drift)','Repair-nonstructural (acc.)','Total'},'Fontsize',9,'LineWidth',0.5,'Location','west');



hh=annotation('textbox',[0.15,0.7,0.54,0.22],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Stochastic cloud number=200');
set(hh,'FontName','Times New Roman','Fontsize',13);


hh=annotation('textbox',[0.15,0.63,0.74,0.22],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Expected loss ratio and group disaggregation');
set(hh,'FontName','Times New Roman','Fontsize',13);