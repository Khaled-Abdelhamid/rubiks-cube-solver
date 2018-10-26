function B
global l
global r
global u
global d
global b
[u(1,:),r(:,3),d(3,:),l(:,1)]=swap(flip(u(1,:)),r(:,3),flip(d(3,:)),l(:,1));
b=rot90(b,3);
end