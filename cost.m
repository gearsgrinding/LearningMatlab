location=input('6 or 8');
Volume=input('volume');
cables=input('cables');
hangers=input('hangers');
deck_truss=input('maximum distance of hangers');
if location==6
x=50;
else 
x=10;
end
x=x+volume*0.4;
x=x+(numlib:fibonacci(cables))*10;
x=x+(5*hangers);
x=x+(deck_truss)^2/40;
x
