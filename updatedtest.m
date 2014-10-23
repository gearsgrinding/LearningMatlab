hangers=input('hangers ');
mass=input('mass ');
height=input('height of pylons ');
h=input('height from the road ');
sec=ceil(hangers/2); %Finding number of height divisions%
theta1=atand(((height-h)/sec)/(36/(hangers+1))); %Finding the angles from the height divisions%
w=9.8*mass;%converting mass to weight%

matrix=[sind(theta1) sind(theta1); cosd(theta1) -cosd(theta1)]; %creating a matrix of x and y forces%

if mod(hangers,2)==0 %Case of even number of hangers%
for x=1:1:sec %find all tension members going from most to least%
    if x==sec %Accounting for even number of hangers%
    values=[(2*w/x);0];
    else
    values=[(w/x);0];
    end
solution=linsolve(matrix,values);%getting values of t1 and t2%
disp('t1='); %printing values%
disp(solution(1,1));
disp('t2=');
disp(solution(2,1));
end
else %Case of odd number of hangers%
for x=1:1:sec %find all tension members going from most to least% 
values=[(w/x);0];
solution=linsolve(matrix,values);
disp('t1=');
disp(solution(1,1));
disp('t2=');
disp(solution(2,1));

end;
end