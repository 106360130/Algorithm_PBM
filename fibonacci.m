close all;
clear all;
%{
�λ��j���覡�g"�O���ƦC"
%}
n = 6;
fibonacci_j(n)

function ans = fibonacci_j(n)

if( n == 1 || n == 2)  %�O�o�n��"�פ�"����
    ans = 1;
    
elseif(n>=3)
    ans = fibonacci_j(n-1) + fibonacci_j(n-2);
    
end

end

