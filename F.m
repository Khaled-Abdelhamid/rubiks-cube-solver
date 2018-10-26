function F
global l
global r
global u
global d
global f
[u(3,:),l(:,3),d(1,:),r(:,1)]=swap(u(3,:),flip(l(:,3)),d(1,:),flip(r(:,1)));
f=rot90(f,3);
end