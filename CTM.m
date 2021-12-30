close;
lanes = 3; %路段数
times = 5; %时间层
qm = 300; %道路通行能力
deltaT = 15; %时间离散间隔
deltaX = 0.5; %空间离散间隔
Wb = 1.8; %后向波传播波速
vf = 50; %自由流速度
Kj = 300; %最大密度 （即拥挤密度）
%矩阵的初始化
% N(:,1) = 50;
% N(:,lanes+2)=50;
% N(1,:) = [50,23,35,58,69,80,59,38,57,36,70,50]; 

M(:,1) = 5;
M(:,lanes+2)=5;
M(1,:) = [5,2,4,6,5];
for t=2:times+1
    for l=2:lanes+1
        y1 = min([M(t-1,l-1),qm*deltaT,Wb/vf*(Kj*deltaX-M(t-1,l))]);
        y2 = min([M(t-1,l),qm*deltaT,Wb/vf*(Kj*deltaX-M(t-1,l+1))]);
        M(t,l) = M(t-1,l) + y1 - y2;
        %时空密度矩阵此处未设
    end
end


x =1:lanes;
for i=1:times
    plot(x,M(i,2:lanes+1));
    hold on;
end



