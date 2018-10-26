function z
global l
global r
global u
global d
global b 
global f


[l,d,r,u]=swap(l,d,r,u);
l=rot90(l,3);
d=rot90(d,3);
r=rot90(r,3);
u=rot90(u,3);
f=rot90(f,3);
b=rot90(b);
end