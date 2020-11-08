clear all;
close all;

%n >= 3
n = 50;
coin = zeros(1,n);

% coin(6) = -1;  %隨機給定假幣位置
fake = 0;  %紀錄假幣位置，如果為"0"表示沒假幣
judgement_first = 0;
judgement_now = 0;
judgement_temp = 0;
fack_coin_weight = 0;  %"1"是fack_coin比較重，"-1"是fack_coin比較輕

%先做一次判斷
if(coin(1) == coin(2))
    judgement_first = 0;  %一樣的話是"0"
    
else
    judgement_first = 1;  %不一樣的話是"1"
end
%先做一次判斷

%如果與第一次判斷不符合，就找到了假幣
for i = 3 : n
    if(coin(i) == coin(1))
        judgement_now = 0;
    else
        judgement_now = 1;
    end
    
    if(judgement_first == 1 &&  judgement_now == 1)  %"假 真 真"
       fake = 1; 
       break;
       
    elseif(judgement_first == 1 && judgement_now == 0)  %"真 假 真"
        fake = 2;
        break;
        
    elseif(judgement_first == 0 && judgement_now == 1)  %"真 真 假" 或 "真 真 真...假"
        fake = i;
        break;
    end
end
%如果與第一次判斷不符合，就找到了假幣


genuine = 1;
if(fake == genuine)
    genuine = 2;
end

fake
if(fake ~= 0)  %一個假
    %比較假幣重量
    if(coin(fake) > coin(genuine))
        fack_coin_weight = 1
    else
        fack_coin_weight = -1
    end
    %比較假幣重量
end
