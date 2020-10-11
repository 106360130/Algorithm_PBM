function nums_sorted = merge_sort(nums)
%{
�X�ֱƧ�
�N�ƦC���_���b����
���Ψ�u��"�@�ӼƦr"
�A�N���Ϊ��p�s�@�@�X��

�ѦҸ�� : 
https://www.youtube.com/watch?v=uvxHAH3Wq2I&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&index=3&t=194s&ab_channel=%E5%9B%BE%E7%81%B5%E6%98%9F%E7%90%83TuringPlanet
https://www.youtube.com/watch?v=cICp7Srn1mY&ab_channel=ProgrammerWorld
https://programmerworld.co/matlab/merge-sort-algorithm-solved-using-recursive-matlab-function/
%}

nums_length = length(nums);

%���b��u�Ѥ@�ӼƦr�N�i�H����F
if(nums_length < 2)
    nums_sorted = nums;
    return;
end
%���b��u�Ѥ@�ӼƦr�N�i�H����F

%�N�ƦC���_���@�b����
nums_half_index = int32(nums_length/2);  %�����(�H32bits�覡�x�s)

nums_1 = merge_sort(nums(1 : nums_half_index));
nums_2 = merge_sort(nums(nums_half_index+1 : nums_length));

nums_1_length = length(nums_1);
nums_2_length = length(nums_2);
%�N�ƦC���_���@�b����

count_nums_1 = 1;
count_nums_2 = 1;

nums_sorted = [];

while(count_nums_1 <= nums_1_length)  %�������A����W�L"nums_1"������
    
    if(count_nums_2 > nums_2_length)  %����W�L"nums_2"������
        nums_sorted = [nums_sorted nums_1(count_nums_1)];
        count_nums_1 = count_nums_1+1;
        continue;
    end
    
    %�N���Τ@�b���ƦC�X�֡B�Ƨ�
    if(nums_1(count_nums_1) < nums_2(count_nums_2))
        nums_sorted = [nums_sorted nums_1(count_nums_1)];
        count_nums_1 = count_nums_1+1;
    else
        nums_sorted = [nums_sorted nums_2(count_nums_2)];
        count_nums_2 = count_nums_2+1;
    end
    %�N���Τ@�b���ƦC�X�֡B�Ƨ�
    
end

for j=count_nums_2:nums_2_length
    nums_sorted = [nums_sorted nums_2(j)];
end
end