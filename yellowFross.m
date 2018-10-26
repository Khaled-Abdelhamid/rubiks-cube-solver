clear
clc
global l
global r
global u
global d
global f
global b
for asd=1:1000
    allright;
    show;
    randomize(20);
    show;
    notsolved=1;
    downCount=0;
    %solving cross
    while ~(u(2,2)==u(2,1)&& u(2,2)==u(2,3)&& u(2,2)==u(1,2)&& u(2,2)==u(3,2))%%cross is complete
        while notsolved
            if f(1,2)~=f(2,2)|| u(3,2)~=u(2,2)
                for n=1:4
                    
                    if u(2,2)==f(1,2)&&u(3,2)==f(2,2)%ruwix states
                        F;Ui;R;U;
                        
                        break;
                    end
                    if u(2,2)==f(3,2)&&d(1,2)==f(2,2)
                        Fi;Ri;Di;R;F;F;
                        
                        break;
                    end
                    if u(2,2)==f(2,3)&&r(2,1)==f(2,2)
                        Ri;Di;R;F;F;
                        
                        break;
                    end
                    if u(2,2)==f(2,1)&&l(2,3)==f(2,2)%the opposite of the above
                        L;D;Li;F;F;
                        
                        break;
                    end
                    if u(2,2)==d(1,2)&&f(2,2)==f(3,2)%trivial solution
                        F;F;
                        
                        break;
                    end
                    
                    D;
                    downCount=downCount+1;
                    
                    if downCount>3
                        y;
                        
                        downCount=0;
                    end
                end
            else
                y;
                
                downCount=0;
            end
            if(u(2,2)==u(2,1)&& u(2,2)==u(2,3)&& u(2,2)==u(1,2)&& u(2,2)==u(3,2))
                notsolved=0;
            end
            if f(2,3)==u(2,2)
                Ri;D;R
            end
            if f(2,1)==u(2,2)
                L;D;Li
            end
            if f(1,2)==u(2,2)
                F;F;
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
                            
                        end
                        if f(3,3)==u(2,2)&&r(3,1)==r(2,2)&&d(1,3)==f(2,2)%right down corner
                            Di;Ri;D;R;
                            
                            break;
                        end
                        D;
                    else
                        y;
                        n=1;
                    end
                end
                for ab=1:4
                    if u(2,2)==u(3,1)&&f(1,1)~=f(2,2)%left white corner misplaced
                        L;Di;Li;
                        
                        break;
                        
                    end
                    
                    if u(2,2)==u(3,3)&&f(1,3)~=f(2,2)%right white corner misplaced
                        Ri;D;R;
                        break;
                        
                    end
                    if d(1,1)==u(2,2)%downleft corner with up color facing down
                        L;Di;Li;Di;Fi;D;F;
                        break;
                        
                    end
                    if d(1,3)==u(2,2)%downright corner with up color facing down
                        Ri;D;R;D;F;Di;Fi;
                        break;
                        
                    end
                    if f(1,3)==u(2,2) %upright corner with up color facing front
                        Ri;D;R;
                        break;
                        
                    end
                    if f(1,1)==u(2,2) %upleft corner with up color facing front
                        L;Di;Li;
                        break;
                        
                    end
                    D;
                end
                D;
                if x>3
                    y;
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
                        
                        break;
                    end
                    if f(3,2)==f(2,2)&&d(1,2)==r(2,2) % the edge of the right
                        Di;Ri;D;R;D;F;Di;Fi;
                        
                        break;
                        
                    end
                    D;
                    
                end
            else
                y;
                n=1;
            end
            for bc=1:4
                for cd=1:4
                    if cd<4
                        if f(2,3)==r(2,2)&&r(2,1)==f(2,2)%edge is swaped in its place(right)
                            Ri;D;R;D;F;Di;Fi;D;Ri;D;R;D;F;Di;Fi;
                            
                            break;
                        end
                        if f(2,1)==l(2,2)&&l(2,3)==f(2,2)%edge is swaped in its place(left)
                            L;Di;Li;Di;Fi;D;F;Di;L;Di;Li;Di;Fi;D;F;
                            
                            break;
                        end
                        if (f(2,1)~=d(2,2)&&l(2,3)~=d(2,2))&&~(f(2,1)==f(2,2)&&l(2,3)==l(2,2))%important edge left
                            L;Di;Li;Di;Fi;D;F;
                            
                            break;
                        end
                        if (f(2,3)~=d(2,2)&&r(2,1)==d(2,2))&&~(f(2,3)==f(2,2)&&r(2,1)==r(2,2))%important edge right
                            Ri;D;R;D;F;Di;Fi;
                            
                            break;
                        end
                        D;
                    else
                        cd=1;
                        y;
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
               
           end
           if u(2,2)==u(2,1)&&u(2,2)==u(2,3)%the "dal" form
               F;R;U;Ri;Ui;Fi;
               
           end
           U;
           
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
    end
        if u(3,1)==u(2,2)&&u(1,3)~=u(2,2)&&u(1,1)~=u(2,2)&&u(3,3)~=u(2,2)
            R;U;Ri;U;R;U;U;Ri;
            
            
        elseif ~theCaseIs &&l(1,3)==u(2,2)
            R;U;Ri;U;R;U;U;Ri;
            
        end
        U;
        

end
show;
end

