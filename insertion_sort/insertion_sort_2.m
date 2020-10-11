function nums_sorted = insertion_sort_2(nums)
%{
插入排序(insertion_sort)
以由小排到大來說明
只要"目前數字"比"前面一個"小
"前一個"就往後移一個
直到排到第一個為止

參考資料 :
https://www.youtube.com/watch?v=uvxHAH3Wq2I&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&index=3&t=194s&ab_channel=%E5%9B%BE%E7%81%B5%E6%98%9F%E7%90%83TuringPlanet
%}

% nums = [1 2 3 4 5 6 7 6 1 3 5 4 6 4 6 1 5 3 5 4 5 0 1 4 6 5 8 4];
nums_size = size(nums);

% figure;
% stem(nums);
% title("INSERTION SORT");
for i = 2:nums_size(2)  %從第二個開始往前比
    
    num_now = nums(i);  %暫存"目前數字"
    j = i-1  %"前一個"數字的位置
    
    %"&&"中，前面的條件會先判斷，如果前面條件不符合就直接不符合
    while( j >= 1 && nums(j) > num_now)  %如果"目前數字"大於"前一個"，"前一個"就往後覆蓋
        nums(j+1) = nums(j);  %"前一個"往後移
%         pause(0.5);
%         stem(nums);
%         title("INSERTION SORT");
%         nums
        j = j-1;  %往下找繼續查
    end
    
    nums(j+1) = num_now;  %找到位置將"目前數字"覆蓋上去
%     pause(0.5);
%     stem(nums);
%     title("INSERTION SORT");

end
nums_sorted = nums;

end