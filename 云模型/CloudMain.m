clc;
clear
% 每幅图生成N个云滴
N = 1500;
% 射击成绩原始数据，这里数据按列存储所以要转置
Y = [9.5 10.3 10.1 8.1 
10.3 9.7 10.4 10.1 
10.6 8.6 9.2 10.0 
10.5 10.4 10.1 10.1 
10.9 9.8 10.0 10.1 
10.6 9.8 9.7 10.0 
10.4 10.5 10.6 10.3 
10.1 10.2 10.8 8.4 
9.3 10.2 9.6 10.0 
10.5 10.0 10.7 9.9]';

%每一组数据生成一组云滴
for i=1:size(Y,1)
    %函数subplot是将多个图画到一个平面上的工具。
    subplot(size(Y,1)/2,2,i);
    [x,y,Ex,En,He] = CloudTransform(Y(i,:),N);
    %将在第i副图上绘图
    plot(x,y,'r.');
    %为坐标轴命名
    xlabel('射击成绩分布/环');
    ylabel('确定度');
    %为第i副图设置标题  num2str函数的功能是：把数值转换成字符串
    title(strcat('第',num2str(i),'人射击云模型还原图谱'));
    %axis( [xmin xmax ymin ymax] ) 设置当前坐标轴 x轴 和 y轴的限制范围
    axis([8,12,0,1]);
end



