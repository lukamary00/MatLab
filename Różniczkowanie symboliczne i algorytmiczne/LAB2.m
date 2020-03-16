%syms x;
%f1 = sqrt(x^2+1);
%f1=(x^2 + 1)^(1/2)
%pf1=diff(f1,x);
%pf1=x/(x^2 + 1)^(1/2)
%f2 = 1/(sqrt(x^2+1)+x);

%pf2=diff(f2,x); 
%¿eby uproszczyæ wyra¿enie
%simplify(pf2);

%mupad - Notebook
%x:=Dom::Interval([-1],[1]);
%[-1,1]
%x^2
%[0,1]
%x^2+x
%[-1,2]
%cos(x)
%[cos(1),1]


function [v10,vp10] = f1(x,y,zmienna)
if(zmienna == 'x')
    vpx = 1;
    vpy = 0;
end
if(zmienna == 'y')
    vpx = 0;
    vpy = 1;
end

v2 = x*y;
vp2 = vpx*y + vpy*x;
v3 = sin(x);
vp3 = cos(vpx);
v4 = v2 + v3;
vp4 = vp2 + vp3;
v5 = v4 + 4;
vp5 = vp4 + 4;
v6 = sqrt(v5);
vp6 = 1/(2*sqrt(v5)*vp5);
v7 = y^2;
vp7 = 2*y;
v8 = v7*3;
vp8 = vp7*3;
v9 = v8 + 6;
vp9 = vp8 + 6;
v10 = v6 * v9;
vp10 = vp6 * vp9;

end





