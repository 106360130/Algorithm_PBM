function nums_sorted = insertion_sort_2(nums)
%{
���J�Ƨ�(insertion_sort)
�H�Ѥp�ƨ�j�ӻ���
�u�n"�ثe�Ʀr"��"�e���@��"�p
"�e�@��"�N���Ჾ�@��
����ƨ�Ĥ@�Ӭ���

�ѦҸ�� :
https://www.youtube.com/watch?v=uvxHAH3Wq2I&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&index=3&t=194s&ab_channel=%E5%9B%BE%E7%81%B5%E6%98%9F%E7%90%83TuringPlanet
%}

% nums = [1 2 3 4 5 6 7 6 1 3 5 4 6 4 6 1 5 3 5 4 5 0 1 4 6 5 8 4];
nums_size = size(nums);

% figure;
% stem(nums);
% title("INSERTION SORT");
for i = 2:nums_size(2)  %�q�ĤG�Ӷ}�l���e��
    
    num_now = nums(i);  %�Ȧs"�ثe�Ʀr"
    j = i-1  %"�e�@��"�Ʀr����m
    
    %"&&"���A�e��������|���P�_�A�p�G�e�����󤣲ŦX�N�������ŦX
    while( j >= 1 && nums(j) > num_now)  %�p�G"�ثe�Ʀr"�j��"�e�@��"�A"�e�@��"�N�����л\
        nums(j+1) = nums(j);  %"�e�@��"���Ჾ
%         pause(0.5);
%         stem(nums);
%         title("INSERTION SORT");
%         nums
        j = j-1;  %���U���~��d
    end
    
    nums(j+1) = num_now;  %����m�N"�ثe�Ʀr"�л\�W�h
%     pause(0.5);
%     stem(nums);
%     title("INSERTION SORT");

end
nums_sorted = nums;

end