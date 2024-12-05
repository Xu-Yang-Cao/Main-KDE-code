delt1=0.01;delt2=0.002;
gridx1=0:delt1:2;
gridx2=0:delt2:0.2;
gridx1=repmat(gridx1',1,length(gridx2));
gridx2=repmat(gridx2,length(gridx1(:,1)),1);

[f,xi,bw] = ksdensity(Sum(:,1),gridx1(:,1)); 

EDP=Sum(:,2);
IM=Sum(:,1);

H1=[0.0525658904 9.851142e-04;0.0009851142 3.945096e-05]; %obtained via R


H2=inv(H1);
BB=[];
summary=0;

for i=1:numel(gridx1(:,1))
    for j=1:numel(gridx2(1,:))
       for z= 1:numel(IM)  
        b1=[gridx1(i,j)-IM(z),gridx2(i,j)-EDP(z)];
        b2=b1.';
        temp=1/numel(IM)/det(H1)^0.5/(2*pi)*exp(-0.5*b1*H2*b2);
        summary=summary+temp;
       end
        BB(i,j)=summary;
        summary=0;
    end
end
 contour3(gridx1,gridx2,BB,50)
 


 MIDR=0.0027;kdetwodimension=0;kdematrix=[];
 for y=1:length(gridx2(:,1))
 for x=floor(MIDR/delt2+1):length(gridx2(1,:))
     kdetwodimension=kdetwodimension+BB(y,x);
 end
 kdetwodimension=kdetwodimension*delt2;
 kdematrix=[kdematrix;kdetwodimension];
 kdetwodimension=0;
 end
     
 Probability_1=kdematrix./f;
 Final_1=[xi,Probability_1];

   MIDR=0.0056;kdetwodimension=0;kdematrix=[];
 for y=1:length(gridx2(:,1))
 for x=floor(MIDR/delt2+1):length(gridx2(1,:))
     kdetwodimension=kdetwodimension+BB(y,x);
 end
 kdetwodimension=kdetwodimension*delt2;
 kdematrix=[kdematrix;kdetwodimension];
 kdetwodimension=0;
 end
     
 Probability_2=kdematrix./f;
 Final_2=[xi,Probability_2];

 MIDR=0.0154;kdetwodimension=0;kdematrix=[];
 for y=1:length(gridx2(:,1))
 for x=floor(MIDR/delt2+1):length(gridx2(1,:))
     kdetwodimension=kdetwodimension+BB(y,x);
 end
 kdetwodimension=kdetwodimension*delt2;
 kdematrix=[kdematrix;kdetwodimension];
 kdetwodimension=0;
 end
     
 Probability_3=kdematrix./f;
 Final_3=[xi,Probability_3];

 
   MIDR=0.04;kdetwodimension=0;kdematrix=[];
 for y=1:length(gridx2(:,1))
 for x=floor(MIDR/delt2+1):length(gridx2(1,:))
     kdetwodimension=kdetwodimension+BB(y,x);
 end
 kdetwodimension=kdetwodimension*delt2;
 kdematrix=[kdematrix;kdetwodimension];
 kdetwodimension=0;
 end
     
 Probability_4=kdematrix./f;
 Final_4=[xi,Probability_4];