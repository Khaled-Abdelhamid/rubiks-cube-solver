%this function swaps shifts the order of the (array or vector)  
% 1st -> 2nd   &   2nd -> 3rd  &  3rd->4th  & 4th-> 1st

function [first,second,third,fourth]=swap(first,second,third,fourth)
temp=first;
first=second;
second=third;
third=fourth;
fourth=temp;

end