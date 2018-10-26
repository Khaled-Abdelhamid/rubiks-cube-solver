function shrink
global sol
index=1;

for n=1:length(sol)
    if sol(n)~=0
        opt(index)=sol(n);
        index=index+1;
    end
end
sol=zeros;
sol=opt;
end

