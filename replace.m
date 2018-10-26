
function replace(string,with)
global sol
found=1;
while(~found)
    found=1;
    k=strfind(sol,string);
    if ISEMPTY(k)~=0
        found=0;
    end
    for n=1:length(k)
        for h=0:length(string)-1
            sol(k(n)+h)=0;
        end
    end
    for n=1:length(k)
        for h=1:length(with)
            sol(k+h-1)=with(h);
        end
    end
    shrink;
end
