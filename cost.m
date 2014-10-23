location=input('6 or 8');
Volume=input('volume');
cables=input('cables');
hangers=input('hangers');
deck_truss=input('maximum distance of hangers');
if location==6 %Cost based on location 6 or 8 feet%
x=50;
else 
x=10;
end
x=x+volume*0.4; %Adding cost based on volume in cm^2%
x=x+(numlib:fibonacci(cables+1))*10; %Adding cost based on the fibonacci sequence for cables%
x=x+(5*hangers); %Adding cost of hangers (5Mcu each)%
x=x+(deck_truss)^2/40; %Addinc cost for maximum distance of hangers%
x %output of the final sum%
