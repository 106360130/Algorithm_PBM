clear all;
close all;



%disk的資料
%"0"是黑色，"1"是白色
n = 9;
disk_length = 2*n;

disk = zeros(1,disk_length);
for i = 2: 2 : disk_length
    disk(i) = 1;
end
% disk = [0 1 0 1 0 1 0 1 0 1 0 1];
%disk的資料

%{
1 0 1 0 1 0 1 0 1 0  //2 1
0 1 1 0 1 0 1 0 1 0  //4 2
0 1 0 1 1 0 1 0 1 0
0 0 1 1 1 0 1 0 1 0  //6 3
0 0 1 1 0 1 1 0 1 0
0 0 1 0 1 1 1 0 1 0
0 0 0 1 1 1 1 0 1 0
%}
figure;
subplot(2,1,1);imshow(disk,[]);
title('ORIGINAL');

count = 0;
%disk排序
for i = 2 : 2 : disk_length
    for j = 0 : (i/2)-1
        temp = disk(i-1-j);
        disk(i-1-j) = disk(i-j);
        disk(i-j) = temp;
        
        subplot(2,1,2);imshow(disk,[]);
        title('PROCESS');
        pause(1);
        count = count+1;
    end
    
end
%disk排序