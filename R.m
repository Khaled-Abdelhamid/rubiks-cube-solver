function R
global r
global u
global d
global b 
global f
[f(:,3),d(:,3),b(:,1),u(:,3)]=swap(f(:,3),d(:,3),flip(b(:,1)),flip(u(:,3)));
r=rot90(r,3);
end