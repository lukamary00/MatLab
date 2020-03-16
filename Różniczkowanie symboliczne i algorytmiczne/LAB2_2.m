syms x y;
f1(x,y) = sqrt(x*y + sin(x) + 4)+(3*y^2  + 6);
wyn = double(f2(2,3));
[wynf, dynfx] = f1(2,3,'x');
[wynf, dynfy] = f1(2,3,'y');


df2x(x,y) = diff(f1, x);
df2y(x,y) = diff(f1, y);
wynx=double(df2x(2,3));
wyny=double(df2y(2,3));



 