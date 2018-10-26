function D
global l
global r
global d
global b 
global f
[f(3,:),l(3,:),b(3,:),r(3,:)]=swap(f(3,:),l(3,:),b(3,:),r(3,:));

d=rot90(d,3);

end