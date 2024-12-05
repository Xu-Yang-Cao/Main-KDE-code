figure('Units','centimeter','Position',[5 5 25 8]);

aa=[y_KDE_200_total(1,2:21);y_LSR_4000_total(1,2:21);y_LSR_200_total(1,2:21);y_MCS_total(1,2:21)]';


a1=[1,6,11,16,21,26,31,36,41,46];a2=a1+1;a3=a2+1;a4=a3+1;


H1=bar(a1,aa(1:2:20,1),0.2,'FaceColor',[0.667,0.667,1],'EdgeColor',[1 1 1],'FaceAlpha',0.3); hold on;
H2=bar(a2,aa(1:2:20,2),0.2,'FaceColor',[0.8 0.8 0.0],'EdgeColor',[1 1 1],'FaceAlpha',0.3); hold on;
H3=bar(a3,aa(1:2:20,3),0.2,'FaceColor',[1.0 0.27 0.0],'EdgeColor',[1 1 1],'FaceAlpha',0.3); hold on;
H4=bar(a4,aa(1:2:20,4),0.2,'FaceColor',[0.1 0.8 0.2],'EdgeColor',[1 1 1],'FaceAlpha',0.3); hold on;


stem(a1,aa(1:2:20,1),'fill','b') ;hold on;
stem(a2,aa(1:2:20,2),'fill','b') ;hold on;
stem(a3,aa(1:2:20,3),'fill','b') ;hold on;
stem(a4,aa(1:2:20,4),'fill','b') ;hold on;


y1=0:10:200;
x1=5*ones(1,length(y1));
plot(x1,y1,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y2=0:10:200;
x2=10*ones(1,length(y2));
plot(x2,y2,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y3=0:10:200;
x3=15*ones(1,length(y2));
plot(x3,y3,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y4=0:10:200;
x4=20*ones(1,length(y2));
plot(x4,y4,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y5=0:10:200;
x5=25*ones(1,length(y2));
plot(x5,y5,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y6=0:10:200;
x6=30*ones(1,length(y2));
plot(x6,y6,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y7=0:10:200;
x7=35*ones(1,length(y2));
plot(x7,y7,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y8=0:10:200;
x8=40*ones(1,length(y2));
plot(x8,y8,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;
y9=0:10:200;
x9=45*ones(1,length(y2));
plot(x9,y9,'LineWidth',1,'color',[0.667,0.667,0.667]);
hold on;

%%%%%%%%%
J1=plot(a1,aa(1:2:20,1),'color','b','LineWidth',2,'LineStyle','-'); hold on;
J2=plot(a4,aa(1:2:20,4),'color','g','LineWidth',2,'LineStyle','-'); hold on;

xlabel('Intensity level (g)','FontSize',16,'FontName','Times New Roman');
ylabel('Expected total loss ratio (%)','FontSize',16,'FontName','Times New Roman');
set(gca,'FontName','Times New Roman','FontSize',13)

ylim([0,100]);
set(gca,'YTick',0:20:100);
xlim([0,50]);
set(gca,'XTick',3:5:48);
set(gca,'XTicklabel',{'IM=0.1g','IM=0.3g','IM=0.5g','IM=0.7g','IM=0.9g','IM=1.1g','IM=1.3g','IM=1.5g','IM=1.7g','IM=1.9g'}); 


hh=annotation('textbox',[0.15,0.7,0.74,0.22],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Comparision among KDE, LSR and MCS');
set(hh,'FontName','Times New Roman','Fontsize',11);
hh=annotation('textbox',[0.15,0.63,0.74,0.22],'LineStyle','none','LineWidth',0.5,'FontWeight','bold','FontAngle','italic','String','Expected total loss ratio');
set(hh,'FontName','Times New Roman','Fontsize',11);


for i=1:10
text(0+5*(i-1),3+10*(i-1),num2str(roundn(y_KDE_200_total(1,2*i),-3)),'FontName','Times New Roman','Fontsize',8,'FontWeight','bold','FontAngle','italic'); 
text(3+5*(i-1),3+10*(i-1),num2str(roundn(y_MCS_total(1,2*i),-3)),'FontName','Times New Roman','Fontsize',8,'FontWeight','bold','FontAngle','italic'); 
end



