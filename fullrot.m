function found=fullrot
global sol
found=0;
%360
while(~found)
    found=1;
    for n=1:length(sol)
        if((length(sol)-n)>5&&sol(n)==sol(n+1)&&sol(n)==sol(n+2)&&sol(n)==sol(n+3))
            sol(n)=0;
            sol(n+1)=0;
            sol(n+2)=0;
            sol(n+3)=0;
            found=0;
        end
    end
    shrink;
end
end