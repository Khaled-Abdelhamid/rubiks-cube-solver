function L
global l
global u
global d
global b 
global f

[f(:,1),u(:,1),b(:,3),d(:,1)]=swap(f(:,1),u(:,1),flip(b(:,3)),flip(d(:,1)));
l=rot90(l,3);
end