x1=input('x1=');
x2=input('x2=');
y1=input('y1=');
y2=input('y2=');
w=input('weight=');
theta1=atand(y1/x1);
theta2=atand(y2/x2);
matrix=[sind(theta1) sind(theta2); cosd(theta1) -cosd(theta2)];
values=[w;0];
solution=linsolve(matrix,values);
disp('t1=');
disp(solution(1,1));
disp('t2=');
disp(solution(2,1));

