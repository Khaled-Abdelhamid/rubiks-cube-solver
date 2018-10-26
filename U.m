function U
global l
global r
global u
global b 
global f
[f(1,:),r(1,:),b(1,:),l(1,:)]=swap(f(1,:),r(1,:),b(1,:),l(1,:));
u=rot90(u,3);
end