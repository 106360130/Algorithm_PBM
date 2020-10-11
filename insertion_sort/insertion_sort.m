function nums_sorted = insertion_sort(nums)
%{
插入排序(insertion_sort)
以由小排到大來說明
只要"後"小於"前"，前後就交換位置
不斷往前比較，只要小於就換
直到排到第一個為止
%}

% nums = [1 2 3 4 5 6 7 6 1 3 5 4 6 4 6 1 5 3 5 4 5 0 1 4 6 5 8 4];
nums_size = size(nums);

% figure;
% stem(nums);
% title("INSERTION SORT");
for i = 2:nums_size(2)  %從第二個開始往前比
    
    j = i-1  %"前一個"數字的位置
    %"&&"中，前面的條件會先判斷，如果前面條件不符合就直接不符合
    while( j >= 1 && nums(j+1) < nums(j))  %如果"後"小於"前"就交換，直到換到"位置_1"為止
        %前後交換位置
        num_temp = nums(j);
        nums(j) = nums(j+1);
        nums(j+1) = num_temp;
        %前後交換位置
        
%         pause(0.1);
%         stem(nums);
%         title("INSERTION SORT");
%         nums
        
        j = j-1;  %往下找繼續查看是否有需要交換的
    end
end
nums_sorted = nums;
end