function nums_sorted = quick_sort(nums)
%{
е硉逼 :
繦诀т计いㄤい计暗膀非だΘㄢ竤
竤计т计膀非だㄢ竤
灿だ竤逞""计ゎ
计碞逼ЧΘ

把σ戈 : 
https://www.youtube.com/watch?v=uvxHAH3Wq2I&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&index=3&t=194s&ab_channel=%E5%9B%BE%E7%81%B5%E6%98%9F%E7%90%83TuringPlanet
https://www.youtube.com/watch?v=qe4kG-K962g&list=PLV5qT67glKSGFkKRDyuMfwcL-hwXOc4q_&ab_channel=ArchTutorial
https://www.youtube.com/watch?v=zJ9cy7P0K4w&ab_channel=ProgrammerWorld
https://programmerworld.co/matlab/quick-sort-algorithm-using-recursive-matlab-function/
%}

pivot_num_index = length(nums);  %繦诀т计膀非т程""计

%讽だ竤逞计碞逼ЧΘ
if(pivot_num_index < 2)
    nums_sorted = nums;
    return;
end
%讽だ竤逞计碞逼ЧΘ

nums_1 = [];
nums_2 = [];

for i = 1:pivot_num_index-1
    %沮膀非翴だㄢ竤计
    if(nums(i) < nums(pivot_num_index))
        nums_1 = [nums_1 nums(i)];
    else
        nums_2 = [nums_2 nums(i)];
    end
    %沮膀非翴だㄢ竤计
end

nums_sorted = [quick_sort(nums_1) nums(pivot_num_index) quick_sort(nums_2)];  %ㄖ逼计

end