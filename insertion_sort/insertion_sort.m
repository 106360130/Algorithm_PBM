function nums_sorted = insertion_sort(nums)
%{
���J�Ƨ�(insertion_sort)
�H�Ѥp�ƨ�j�ӻ���
�u�n"��"�p��"�e"�A�e��N�洫��m
���_���e����A�u�n�p��N��
����ƨ�Ĥ@�Ӭ���
%}

% nums = [1 2 3 4 5 6 7 6 1 3 5 4 6 4 6 1 5 3 5 4 5 0 1 4 6 5 8 4];
nums_size = size(nums);

% figure;
% stem(nums);
% title("INSERTION SORT");
for i = 2:nums_size(2)  %�q�ĤG�Ӷ}�l���e��
    
    j = i-1  %"�e�@��"�Ʀr����m
    %"&&"���A�e��������|���P�_�A�p�G�e�����󤣲ŦX�N�������ŦX
    while( j >= 1 && nums(j+1) < nums(j))  %�p�G"��"�p��"�e"�N�洫�A���촫��"��m_1"����
        %�e��洫��m
        num_temp = nums(j);
        nums(j) = nums(j+1);
        nums(j+1) = num_temp;
        %�e��洫��m
        
%         pause(0.1);
%         stem(nums);
%         title("INSERTION SORT");
%         nums
        
        j = j-1;  %���U���~��d�ݬO�_���ݭn�洫��
    end
end
nums_sorted = nums;
end