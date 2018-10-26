function optimize
global sol
fullrot;
rot270;
replace('YdYdYd','Yd');
replace('dYdYY','dd');
fullrot;
replace('Dd',0);
replace('dD',0);
k=strfind(sol,string);
for n=1:length(k)
    for h=0:length(string)-1
        sol(k(n)+h)=0;
    end
end
for n=1:length(k)
    sol(k)=with;
end
shrink;

disp(sol);
disp(length(sol))
end