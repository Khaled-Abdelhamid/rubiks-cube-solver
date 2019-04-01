
%this is khaled edit
clear

global l
global r
global u
global d
global f
global b
global sol

allright;
show;
randomize(20);
show;
notsolved=1;
downCount=0;
sol = [0];
%solving cross
while ~(u(2,2)==u(2,1)&& u(2,2)==u(2,3)&& u(2,2)==u(1,2)&& u(2,2)==u(3,2))%%cross is complete
    while notsolved
        if f(1,2)~=f(2,2)|| u(3,2)~=u(2,2)
            for n=1:4
                if u(2,2)==f(1,2)&&u(3,2)==f(2,2)%ruwix states
                    F;Ui;R;U;
                    sol = ['F' 'u' 'R' 'U'];
                    break;
                end
                if u(2,2)==f(3,2)&&d(1,2)==f(2,2)
                    Fi;Ri;Di;R;F;F;
                    sol = [sol 'f' 'r' 'd' 'R' 'F' 'F'];
                    break;
                end
                if u(2,2)==f(2,3)&&r(2,1)==f(2,2)
                    Ri;Di;R;F;F;
                    sol = [sol  'r' 'd' 'R' 'F' 'F'];
                    break;
                end
                if u(2,2)==f(2,1)&&l(2,3)==f(2,2)%the opposite of the above
                    L;D;Li;F;F;
                    sol = [sol  'L' 'D' 'l' 'F' 'F'];
                    break;
                end
                if u(2,2)==d(1,2)&&f(2,2)==f(3,2)%trivial sol
                    F;F;
                    sol = [sol  'F' 'F'];
                    break;
                end
                D;
                 sol = [sol  'D'];
                downCount=downCount+1;
                
                if downCount>3
                    y;
                    sol = [sol  'Y'];
                    downCount=0;
                end
            end
        else
            y;
            sol = [sol  'Y'];
            downCount=0;
        end
        if(u(2,2)==u(2,1)&& u(2,2)==u(2,3)&& u(2,2)==u(1,2)&& u(2,2)==u(3,2))
            notsolved=0;
        end
        if f(2,3)==u(2,2)
            Ri;D;R
            sol = [sol  'r' 'D' 'R'];
        end
        if f(2,1)==u(2,2)
            L;D;Li
            sol = [sol  'L' 'D' 'l'];
        end
        if f(1,2)==u(2,2)
            F;F;
            sol = [sol  'F' 'F'];
        end
    end
end
show;
%--------------------------------------------------------------------
%solving corners
notsolved=1;
noStateMatcheFront=0;
downCount=0;

while ~(u(2,2)==u(3,1)&& u(2,2)==u(3,3)&& u(2,2)==u(1,3)&& u(2,2)==u(1,1))%%the first layer is complete
    while notsolved
        for x=1:4
            for n=1:4
                if n<3
                    if f(3,1)==u(2,2)&&l(3,3)==l(2,2)&&d(1,1)==f(2,2)%left down corner
                        D;L;Di;Li;
                        sol = [sol 'D' 'L' 'd' 'l'];
                    end
                    if f(3,3)==u(2,2)&&r(3,1)==r(2,2)&&d(1,3)==f(2,2)%right down corner
                        Di;Ri;D;R;
                        sol = [sol 'd' 'r' 'D' 'R'];
                        break;
                    end
                    D;
                    sol = [sol 'D'];
                    
                else
                    y;
                    n=1;
                    sol = [sol 'Y'];
                end
            end
            for ab=1:4
                if u(2,2)==u(3,1)&&f(1,1)~=f(2,2)%left white corner misplaced
                    L;Di;Li;
                    sol = [sol 'L' 'd' 'l'];
                    break;
                    
                end
                
                if u(2,2)==u(3,3)&&f(1,3)~=f(2,2)%right white corner misplaced
                    Ri;D;R;
                    sol = [sol 'r' 'D' 'R'];
                    break;
                    
                end
                if d(1,1)==u(2,2)%downleft corner with up color facing down
                    L;Di;Li;Di;Fi;D;F;
                    sol = [sol 'L' 'd' 'l' 'd' 'f' 'D' 'F'];
                    break;
                    
                end
                if d(1,3)==u(2,2)%downright corner with up color facing down
                    Ri;D;R;D;F;Di;Fi;
                    sol = [sol 'L' 'd' 'l' 'd' 'f' 'D' 'F'];
                    break;
                    
                end
                if f(1,3)==u(2,2) %upright corner with up color facing front
                    Ri;D;R;
                    sol = [sol 'r' 'D' 'R'];
                    break;
                    
                end
                if f(1,1)==u(2,2) %upleft corner with up color facing front
                    L;Di;Li;
                    sol = [sol 'L' 'd' 'l'];
                    break;
                    
                end
                D;
                sol = [sol 'D'];
            end
            D;
            sol = [sol 'D'];
            if x>3
                y;
                sol = [sol 'Y'];
                x=1;
            end
        end
        if u(2,2)==u(3,1)&& u(2,2)==u(3,3)&& u(2,2)==u(1,3)&& u(2,2)==u(1,1)
            notsolved=0;
        end
    end
    
end
show;
%-------------------------------------------------------------------
%solving second layer
while ~(f(2,2)==f(2,1)&&f(2,2)==f(2,3)&&r(2,2)==r(2,1)&&r(2,2)==r(2,3)&&l(2,2)==l(2,1)&&l(2,2)==l(2,3)&& b(2,2)==b(2,1)&&b(2,2)==b(2,3))
    for n=1:4
        if n<4
            for a=1:4
                
                if f(3,2)==f(2,2)&&d(1,2)==l(2,2) % the edge of the left
                    D;L;Di;Li;Di;Fi;D;F;
                    sol = [sol 'D' 'L' 'd' 'l' 'd' 'f' 'D' 'F'];
                    break;
                end
                if f(3,2)==f(2,2)&&d(1,2)==r(2,2) % the edge of the right
                    Di;Ri;D;R;D;F;Di;Fi;
                    sol = [sol 'd' 'r' 'D' 'R' 'D' 'F' 'd' 'f'];
                    break;
                    
                end
                D;
                sol = [sol 'D'];
            end
        else
            y;
            n=1;
            sol = [sol 'Y'];
        end
        for bc=1:4
            for cd=1:4
                if cd<4
                    if f(2,3)==r(2,2)&&r(2,1)==f(2,2)%edge is swaped in its place(right)
                        Ri;D;R;D;F;Di;Fi;D;Ri;D;R;D;F;Di;Fi;
                        sol = [sol 'r' 'D' 'R' 'D' 'F' 'd' 'f' 'D' 'r' 'D' 'R' 'D' 'F' 'd' 'f'];
                        break;
                    end
                    if f(2,1)==l(2,2)&&l(2,3)==f(2,2)%edge is swaped in its place(left)
                        L;Di;Li;Di;Fi;D;F;Di;L;Di;Li;Di;Fi;D;F;
                        sol = [sol 'L' 'd' 'l' 'd' 'f' 'D' 'F' 'd' 'L' 'd' 'l' 'd' 'f' 'D' 'F'];
                        break;
                    end
                    if (f(2,1)~=d(2,2)&&l(2,3)~=d(2,2))&&~(f(2,1)==f(2,2)&&l(2,3)==l(2,2))%important edge left
                        L;Di;Li;Di;Fi;D;F;
                        sol = [sol 'L' 'd' 'l' 'd' 'f' 'D' 'F'];
                        break;
                    end
                    if (f(2,3)~=d(2,2)&&r(2,1)==d(2,2))&&~(f(2,3)==f(2,2)&&r(2,1)==r(2,2))%important edge right
                        Ri;D;R;D;F;Di;Fi;
                        sol = [sol 'r' 'D' 'R' 'D' 'F' 'd' 'f'];
                        break;
                    end
                    D;
                    sol = [sol 'D'];
                else
                    cd=1;
                    y;
                    sol = [sol 'Y'];
                end
            end
        end
    end
    show;
end

%-------------------------------------------------------------------
%solving yellow cross
z;z;
show;
while ~(u(2,2)==u(2,1)&&u(2,2)==u(2,3)&&u(2,2)==u(1,2)&&u(2,2)==u(3,2))% the yellow cross state
    for n=1:4
        if (u(2,2)==u(2,1)&&u(2,2)==u(1,2))||(~(u(2,2)==u(2,1)&&u(2,2)==u(1,2))&&~(u(2,2)==u(2,1)&&u(2,2)==u(2,3))) %the "dal" form or the dot form
            F;U;R;Ui;Ri;Fi;
            sol = [sol 'F' 'U' 'R' 'u' 'r' 'f'];
        end
        if u(2,2)==u(2,1)&&u(2,2)==u(2,3)%the "dal" form
            F;R;U;Ri;Ui;Fi;
            sol = [sol 'F' 'R' 'U' 'r' 'u' 'f'];
        end
        U;
        sol = [sol 'U'];
    end
end
show;

%-----------------------------------------------------------------------
%solving yellow face

while ~(u(1,3)==u(2,2)&&u(1,1)==u(2,2)&&u(3,3)==u(2,2)&&u(3,1)==u(2,2))
    theCaseIs=0;
    for abc=1:4
        if u(3,1)==u(2,2)&&u(1,3)~=u(2,2)&&u(1,1)~=u(2,2)&&u(3,3)~=u(2,2)
            theCaseIs=1;
        end
        U;
        sol = [sol 'U'];
    end
    if u(3,1)==u(2,2)&&u(1,3)~=u(2,2)&&u(1,1)~=u(2,2)&&u(3,3)~=u(2,2)
        R;U;Ri;U;R;U;U;Ri;
        sol = [sol 'R' 'U' 'r' 'U' 'R' 'U' 'U' 'r'];
        
    elseif ~theCaseIs &&l(1,3)==u(2,2)
        R;U;Ri;U;R;U;U;Ri;
        sol = [sol 'R' 'U' 'r' 'U' 'R' 'U' 'U' 'r'];
    end
    U;
    sol = [sol 'U'];
    
    
end
show;
%-----------------------------------------------------------------------
%OLL
step1=0;
while ~(f(1,3)==f(2,2)&&f(1,1)==f(2,2)&&r(1,3)==r(2,2)&&r(1,1)==r(2,2)&&l(1,3)==l(2,2)&&l(1,1)==l(2,2)&&b(1,3)==b(2,2)&&b(1,1)==b(2,2))
    
    for zz=1:4
        for hvh=1:4
            if b(1,1)==b(2,2)&&b(1,3)==b(2,2)&&~(f(1,3)==f(2,2)&&f(1,1)==f(2,2))
                Ri;F;Ri;B;B;R;Fi;Ri;B;B;R;R;Ui;
                sol = [sol 'r' 'F' 'r' 'B' 'B' 'R' 'f' 'r' 'B' 'B' 'R' 'R' 'u'];
                step1=1;
            end
            U;
            sol = [sol 'U'];
        end
        y;
        sol = [sol 'Y'];
        
    end
    if step1==0
        Ri;F;Ri;B;B;R;Fi;Ri;B;B;R;R;Ui;
        sol = [sol 'r' 'F' 'r' 'B' 'B' 'R' 'f' 'r' 'B' 'B' 'R' 'R' 'u'];
    end
    U;
    sol = [sol 'U'];
end
show;
%-----------------------------------------------------------------------
%PLL
step1=0;
while ~(f(1,2)==f(2,2)&&r(1,2)==r(2,2))
    for zz=1:4
        if b(1,2)==b(2,2)&&f(1,2)~=f(2,2)&&f(1,2)==r(2,2)
            F;F;Ui;L;Ri;F;F;Li;R;Ui;F;F;
            step1=1;
            sol = [sol 'F' 'F' 'u' 'L' 'r' 'F' 'F' 'l' 'R' 'u' 'F' 'F'];
        elseif b(1,2)==b(2,2)&&f(1,2)~=f(2,2)&&f(1,2)==l(2,2)
            F;F;U;L;Ri;F;F;Li;R;U;F;F;
            sol = [sol 'F' 'F' 'U' 'L' 'r' 'F' 'F' 'l' 'R' 'U' 'F' 'F'];
            step1=1;
        end
        y;
        sol = [sol 'Y'];
    end
    if step1==0
        F;F;Ui;L;Ri;F;F;Li;R;Ui;F;F;
        sol = [sol 'F' 'F' 'u' 'L' 'r' 'F' 'F' 'l' 'R' 'u' 'F' 'F'];
    end
end
show;
disp(sol);
disp(length(sol));
optimize;

disp(sol);
disp(length(sol));
