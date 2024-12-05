fit_annul_total=interp1(IM_level,[0;(L_C_ave_mean+L_D_ave_mean+L_R_STRU_ave_mean+L_R_MIDR_non_ave_mean+L_R_PFA_non_ave_mean)],x,'linear');
lamda=0.04;%3-6%

p_annul=0;
Nyearloss=[];

for i=2:200
p_annul=p_annul+abs((y(i)-y(i-1))*fit_annul_total(i-1));
end

for Year=1:1:50
p_annul_dis=p_annul*(1-exp(-lamda*Year))/lamda;
Nyearloss=[Nyearloss,p_annul_dis];
end

H1=plot([0,1:1:50],[0,Nyearloss],'color','r','LineWidth',3,'LineStyle','-'); hold on;


fit_annul_total=interp1(IM_level,[0;L_C_ave_mean],x,'linear');
lamda=0.04;%3-6%

p_annul=0;
Nyearloss=[];

for i=2:200
p_annul=p_annul+abs((y(i)-y(i-1))*fit_annul_total(i-1));
end

for Year=1:1:50
p_annul_dis=p_annul*(1-exp(-lamda*Year))/lamda;
Nyearloss=[Nyearloss,p_annul_dis];
end

H2=plot([0,1:1:50],[0,Nyearloss],'color','k','LineWidth',3,'LineStyle','-');hold on;


fit_annul_total=interp1(IM_level,[0;L_D_ave_mean],x,'linear');
lamda=0.04;%3-6%

p_annul=0;
Nyearloss=[];

for i=2:200
p_annul=p_annul+abs((y(i)-y(i-1))*fit_annul_total(i-1));
end

for Year=1:1:50
p_annul_dis=p_annul*(1-exp(-lamda*Year))/lamda;
Nyearloss=[Nyearloss,p_annul_dis];
end

H3=plot([0,1:1:50],[0,Nyearloss],'color','b','LineWidth',3,'LineStyle','-');hold on;


fit_annul_total=interp1(IM_level,[0;L_R_STRU_ave_mean],x,'linear');
lamda=0.04;%3-6%

p_annul=0;
Nyearloss=[];

for i=2:200
p_annul=p_annul+abs((y(i)-y(i-1))*fit_annul_total(i-1));
end

for Year=1:1:50
p_annul_dis=p_annul*(1-exp(-lamda*Year))/lamda;
Nyearloss=[Nyearloss,p_annul_dis];
end

H4=plot([0,1:1:50],[0,Nyearloss],'color','m','LineWidth',3,'LineStyle','-');hold on;


fit_annul_total=interp1(IM_level,[0;L_R_MIDR_non_ave_mean],x,'linear');
lamda=0.04;%3-6%

p_annul=0;
Nyearloss=[];

for i=2:200
p_annul=p_annul+abs((y(i)-y(i-1))*fit_annul_total(i-1));
end

for Year=1:1:50
p_annul_dis=p_annul*(1-exp(-lamda*Year))/lamda;
Nyearloss=[Nyearloss,p_annul_dis];
end

H5=plot([0,1:1:50],[0,Nyearloss],'color',[0.667 0.667 0.667],'LineWidth',3,'LineStyle','-');hold on;


fit_annul_total=interp1(IM_level,[0;L_R_PFA_non_ave_mean],x,'linear');
lamda=0.04;%3-6%

p_annul=0;
Nyearloss=[];

for i=2:200
p_annul=p_annul+abs((y(i)-y(i-1))*fit_annul_total(i-1));
end

for Year=1:1:50
p_annul_dis=p_annul*(1-exp(-lamda*Year))/lamda;
Nyearloss=[Nyearloss,p_annul_dis];
end

H6=plot([0,1:1:50],[0,Nyearloss],'color',[0.667 1 0.667],'LineWidth',3,'LineStyle','-');hold on;




xlim([0,50]);
ylim([0,2]);
set(gca,'XTick',0:5:50);
set(gca,'YTick',0:0.2:2);

set(gca,'FontName','Times New Roman','FontSize',13)

xlabel('Service years','FontSize',13,'FontName','Times New Roman');
ylabel('Expected loss ratio for n years','FontSize',13,'FontName','Times New Roman');


legend([H2,H3,H4,H5,H6,H1],{'Collapse','Demolition','Repair-structural','Repair-nonstructural (drift)','Repair-nonstructural (acc.)','Total'},'Fontsize',9,'LineWidth',0.5,'Location','east');



hh=annotation('textbox',[0.15,0.7,0.54,0.22],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Stochastic cloud number=200');
set(hh,'FontName','Times New Roman','Fontsize',13);


hh=annotation('textbox',[0.15,0.63,0.84,0.22],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Expected loss ratio for n years and group disaggregation');
set(hh,'FontName','Times New Roman','Fontsize',13);

