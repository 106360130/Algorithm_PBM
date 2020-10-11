function nums_sorted = quick_sort(nums)
%{
�ֳt�Ƨ� :
���H����ƦC�����䤤�@�ӼƦr������ǡA������s
�U�s�Ʀr�A�U��@�ӼƦr����ǡA�A�U����s
����Ӥ��@�s�u��"�@��"�Ʀr����
�ƦC�N�ƦC�����F

�ѦҸ�� : 
https://www.youtube.com/watch?v=uvxHAH3Wq2I&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&index=3&t=194s&ab_channel=%E5%9B%BE%E7%81%B5%E6%98%9F%E7%90%83TuringPlanet
https://www.youtube.com/watch?v=qe4kG-K962g&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&ab_channel=ArchTutorial
https://www.youtube.com/watch?v=zJ9cy7P0K4w&ab_channel=ProgrammerWorld
https://programmerworld.co/matlab/quick-sort-algorithm-using-recursive-matlab-function/
%}

pivot_num_index = length(nums);  %�H����@�ӼƦr����ǡA�����"��"�@�ӼƦr

%����s��u�Ѥ@�ӼƦr�N�ƦC����
if(pivot_num_index < 2)
    nums_sorted = nums;
    return;
end
%����s��u�Ѥ@�ӼƦr�N�ƦC����

nums_1 = [];
nums_2 = [];

for i = 1:pivot_num_index-1
    %�ھڰ���I�A����s�Ʀr
    if(nums(i) < nums(pivot_num_index))
        nums_1 = [nums_1 nums(i)];
    else
        nums_2 = [nums_2 nums(i)];
    end
    %�ھڰ���I�A����s�Ʀr
end

nums_sorted = [quick_sort(nums_1) nums(pivot_num_index) quick_sort(nums_2)];  %�X�ֱƦn���ƦC

end