clear all;
close all;

%n >= 3
n = 50;
coin = zeros(1,n);

% coin(6) = -1;  %�H�����w������m
fake = 0;  %����������m�A�p�G��"0"��ܨS����
judgement_first = 0;
judgement_now = 0;
judgement_temp = 0;
fack_coin_weight = 0;  %"1"�Ofack_coin������A"-1"�Ofack_coin�����

%�����@���P�_
if(coin(1) == coin(2))
    judgement_first = 0;  %�@�˪��ܬO"0"
    
else
    judgement_first = 1;  %���@�˪��ܬO"1"
end
%�����@���P�_

%�p�G�P�Ĥ@���P�_���ŦX�A�N���F����
for i = 3 : n
    if(coin(i) == coin(1))
        judgement_now = 0;
    else
        judgement_now = 1;
    end
    
    if(judgement_first == 1 &&  judgement_now == 1)  %"�� �u �u"
       fake = 1; 
       break;
       
    elseif(judgement_first == 1 && judgement_now == 0)  %"�u �� �u"
        fake = 2;
        break;
        
    elseif(judgement_first == 0 && judgement_now == 1)  %"�u �u ��" �� "�u �u �u...��"
        fake = i;
        break;
    end
end
%�p�G�P�Ĥ@���P�_���ŦX�A�N���F����


genuine = 1;
if(fake == genuine)
    genuine = 2;
end

fake
if(fake ~= 0)  %�@�Ӱ�
    %����������q
    if(coin(fake) > coin(genuine))
        fack_coin_weight = 1
    else
        fack_coin_weight = -1
    end
    %����������q
end
