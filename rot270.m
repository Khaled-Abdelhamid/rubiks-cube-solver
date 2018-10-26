function found=rot270
global sol
%270
found=0;
while(~found)
        found=1;
    for n=1:length(sol)
        if((length(sol)-n)>5&&sol(n)==sol(n+1)&&sol(n)==sol(n+2))
            sol(n)=lower(sol(n));
            sol(n+1)=0;
            sol(n+2)=0;
            found=1;
        end
    end
    shrink;
end
end