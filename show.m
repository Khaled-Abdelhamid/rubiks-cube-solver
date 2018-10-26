%this function shows the main array as viewed below 
%        ______               
%       |W W W |              
%       |W W W |              
%       |W W W |              
% ______ ______ ______ ______ 
%|B B B |O O O |G G G |R R R |
%|B B B |O O O |G G G |R R R |
%|B B B |O O O |G G G |R R R |
%______ ______ ______ ______ 
%       |Y Y Y |               
%       |Y Y Y |              
%       |Y Y Y |               
%        ______    

function show
global array

array=repmat(' ',[12 12]);

global l
global r
global u
global d
global b 
global f

array(6:8,2:4)=l;
array(6:8,6:8)=f;
array(6:8,10:12)=r;
array(6:8,14:16)=b;
array(2:4,6:8)=u;
array(10:12,6:8)=d;

array(6:8,1)=' ';
array(6:8,5)=' ';
array(6:8,9)=' ';
array(6:8,13)=' ';
array(6:8,17)=' ';

array(1:5,1:5)=' ';
array(9:13,1:5)=' ';
array(1:5,9:17)=' ';
array(9:13,9:17)=' ';

array(1:5,5)=' ';
array(1:5:9)=' ';
array(9:13,5)=' ';
array(9:13:9)=' ';

disp(array);
end