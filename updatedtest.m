hangers=input('hangers ');
mass=input('mass ');
height=input('height of pylons ');
h=input('height from the road ');
sec=ceil(hangers/2);
theta1=atand(((height-h)/sec)/(36/(hangers+1)));
w=9.8*mass;

matrix=[sind(theta1) sind(theta1); cosd(theta1) -cosd(theta1)];
if mod(hangers,2)==0
for x=1:1:sec
    if x==sec
    values=[(2*w/x);0];
    else
    values=[(w/x);0];
    end
solution=linsolve(matrix,values);
disp('t1=');
disp(solution(1,1));
disp('t2=');
disp(solution(2,1));
end
else 
for x=1:1:sec
values=[(w/x);0];
solution=linsolve(matrix,values);
disp('t1=');
disp(solution(1,1));
disp('t2=');
disp(solution(2,1));

end;
end