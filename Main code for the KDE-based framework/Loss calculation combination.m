fit_DM4_MIDR_STRU=[];fit_DM4_MIDR_non=[];fit_DM4_PFA=[];L_C=[];
fit_DM_demoli=[];L_D=[];
fit_DM1_MIDR_STRU=[];fit_DM2_MIDR_STRU=[];fit_DM3_MIDR_STRU=[];L_R_STRU=[];
fit_DM1_MIDR_non=[];fit_DM2_MIDR_non=[];fit_DM3_MIDR_non=[];L_R_MIDR_non=[];
fit_DM1_PFA=[];fit_DM2_PFA=[];fit_DM3_PFA=[];L_R_PFA_non=[];


for i=1:200
    fit_DM4_MIDR_STRU(i)=interp1(xi,DM4_MIDR_STRU,PGA_selected(i),'linear');
    fit_DM4_MIDR_non(i)=interp1(xi,DM4_MIDR_non,PGA_selected(i),'linear');
    fit_DM4_PFA(i)=interp1(xi,DM4_PFA,PGA_selected(i),'linear');

    L_C(i)=(R1_collapse(i)+R2_collapse(i)+R3_collapse(i))*max([fit_DM4_MIDR_STRU(i),fit_DM4_MIDR_non(i),fit_DM4_PFA(i)]);

    fit_DM_demoli(i)=interp1(xi,DM_demoli,PGA_selected(i),'linear');
    L_D(i)=(R1_collapse(i)+R2_collapse(i)+R3_collapse(i))*fit_DM_demoli(i)*(1-max([fit_DM4_MIDR_STRU(i),fit_DM4_MIDR_non(i),fit_DM4_PFA(i)]));

    fit_DM1_MIDR_STRU(i)=interp1(xi,DM1_MIDR_STRU,PGA_selected(i),'linear');
    fit_DM2_MIDR_STRU(i)=interp1(xi,DM2_MIDR_STRU,PGA_selected(i),'linear');
    fit_DM3_MIDR_STRU(i)=interp1(xi,DM3_MIDR_STRU,PGA_selected(i),'linear');

    L_R_STRU(i)=(R1_slight(i)*fit_DM1_MIDR_STRU(i)+R1_moderate(i)*fit_DM2_MIDR_STRU(i)+R1_extensive(i)*fit_DM3_MIDR_STRU(i))*(1-fit_DM_demoli(i));


    fit_DM1_MIDR_non(i)=interp1(xi,DM1_MIDR_non,PGA_selected(i),'linear');
    fit_DM2_MIDR_non(i)=interp1(xi,DM2_MIDR_non,PGA_selected(i),'linear');
    fit_DM3_MIDR_non(i)=interp1(xi,DM3_MIDR_non,PGA_selected(i),'linear');

    L_R_MIDR_non(i)=(R2_slight(i)*fit_DM1_MIDR_non(i)+R2_moderate(i)*fit_DM2_MIDR_non(i)+R2_extensive(i)*fit_DM3_MIDR_non(i))*(1-fit_DM_demoli(i));



    fit_DM1_PFA(i)=interp1(xi,DM1_PFA,PGA_selected(i),'linear');
    fit_DM2_PFA(i)=interp1(xi,DM2_PFA,PGA_selected(i),'linear');
    fit_DM3_PFA(i)=interp1(xi,DM3_PFA,PGA_selected(i),'linear');

    L_R_PFA_non(i)=(R3_slight(i)*fit_DM1_PFA(i)+R3_moderate(i)*fit_DM2_PFA(i)+R3_extensive(i)*fit_DM3_PFA(i))*(1-fit_DM_demoli(i));

end


IM_level=0:0.1:2;


for j=1:20
for k=1:10
    L_C_ave(j,k)=L_C((j-1)*10+k);
end
end
L_C_ave_mean=mean(L_C_ave,2);


for j=1:20
for k=1:10
    L_D_ave(j,k)=L_D((j-1)*10+k);
end
end
L_D_ave_mean=mean(L_D_ave,2);


for j=1:20
for k=1:10
    L_R_STRU_ave(j,k)=L_R_STRU((j-1)*10+k);
end
end
L_R_STRU_ave_mean=mean(L_R_STRU_ave,2);


for j=1:20
for k=1:10
    L_R_MIDR_non_ave(j,k)=L_R_MIDR_non((j-1)*10+k);
end
end
L_R_MIDR_non_ave_mean=mean(L_R_MIDR_non_ave,2);


for j=1:20
for k=1:10
    L_R_PFA_non_ave(j,k)=L_R_PFA_non((j-1)*10+k);
end
end
L_R_PFA_non_ave_mean=mean(L_R_PFA_non_ave,2);

plot(IM_level,[0;L_C_ave_mean]); hold on;
plot(IM_level,[0;L_D_ave_mean]); hold on;
plot(IM_level,[0;L_R_STRU_ave_mean]); hold on;
plot(IM_level,[0;L_R_MIDR_non_ave_mean]); hold on;
plot(IM_level,[0;L_R_PFA_non_ave_mean]); hold on;
plot(IM_level,[0;(L_C_ave_mean+L_D_ave_mean+L_R_STRU_ave_mean+L_R_MIDR_non_ave_mean+L_R_PFA_non_ave_mean)]);

