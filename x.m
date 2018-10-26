function x
global l
global r
global u
global d
global b 
global f
[u,f,d,b]=swap(u,f,d,b);
l=rot90(l);
r=rot90(r,3);
end