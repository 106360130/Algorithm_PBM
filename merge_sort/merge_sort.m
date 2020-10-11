function nums_sorted = merge_sort(nums)
%{
合併排序
將數列不斷切半分割
分割到只剩"一個數字"
再將分割的小群一一合併

參考資料 : 
https://www.youtube.com/watch?v=uvxHAH3Wq2I&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&index=3&t=194s&ab_channel=%E5%9B%BE%E7%81%B5%E6%98%9F%E7%90%83TuringPlanet
https://www.youtube.com/watch?v=cICp7Srn1mY&ab_channel=ProgrammerWorld
https://programmerworld.co/matlab/merge-sort-algorithm-solved-using-recursive-matlab-function/
%}

nums_length = length(nums);

%切半到只剩一個數字就可以停止了
if(nums_length < 2)
    nums_sorted = nums;
    return;
end
%切半到只剩一個數字就可以停止了

%將數列不斷切一半分割
nums_half_index = int32(nums_length/2);  %取整數(以32bits方式儲存)

nums_1 = merge_sort(nums(1 : nums_half_index));
nums_2 = merge_sort(nums(nums_half_index+1 : nums_length));

nums_1_length = length(nums_1);
nums_2_length = length(nums_2);
%將數列不斷切一半分割

count_nums_1 = 1;
count_nums_2 = 1;

nums_sorted = [];

while(count_nums_1 <= nums_1_length)  %限制條件，不能超過"nums_1"的長度
    
    if(count_nums_2 > nums_2_length)  %不能超過"nums_2"的長度
        nums_sorted = [nums_sorted nums_1(count_nums_1)];
        count_nums_1 = count_nums_1+1;
        continue;
    end
    
    %將分割一半的數列合併、排序
    if(nums_1(count_nums_1) < nums_2(count_nums_2))
        nums_sorted = [nums_sorted nums_1(count_nums_1)];
        count_nums_1 = count_nums_1+1;
    else
        nums_sorted = [nums_sorted nums_2(count_nums_2)];
        count_nums_2 = count_nums_2+1;
    end
    %將分割一半的數列合併、排序
    
end

for j=count_nums_2:nums_2_length
    nums_sorted = [nums_sorted nums_2(j)];
end
end