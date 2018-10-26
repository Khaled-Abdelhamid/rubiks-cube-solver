clear
clc
global l
global r
global u
global d
global f

allright;
show;
randomize(20);
show;
notsolved=1;
noStateMatcheFront=0;
downCount=0;


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

