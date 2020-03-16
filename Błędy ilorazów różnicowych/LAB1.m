%zadanie #1
%Formu�y dwupunktowe

f = @(x) sin(x);
fp = @(x) cos(x);
x0 = 3;
y0 = f(x0);


h = logspace(-20,0,100);


fpx0 = fp(x0);
%bezwzgl�dny
% ./ jest po to aby podnosi� ka�dy element do pot�gi
fpx02 = (f(x0+h)-f(x0)) ./ h; 
%wzgl�dny
delta = abs((fpx02 - fpx0)/fpx0);

loglog(h, delta, ".");


xlabel('h');
ylabel('b��d wzgl�dny');

%o� pozioma krok h ::: im mniejsze h tym mniejszy b��d
%y b��d wzgl�dny


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% zadanie #2
% Formu�y trzypunktowe

hold on

fpx03 = (f(x0 + h) - f(x0 - h)) ./ (2.*h);
delta2 = abs((fpx03 - fpx0)/fpx0);
loglog(h, delta2, "*");

hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% zadanie #3
% Ekstrapolacja Richardsona.




% zadnie #4
% krok zespolony

hold on

i = sqrt(-1);
fpx04 = imag(f(x0+i .* h)) ./ h;
delta3 = abs((fpx04 - fpx0)/fpx0);
loglog(h, delta3, "+");

hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%do opracowania w domu:
% A1(h) = (f(x0+h) - f(h0-h)) ./ (2.*h) - h^2*K1 + h^4*K2
% A1(h/2)                                - h^2/4 * K1 

% (4*A1(h/2) - A1(h))/h-1 => nie b�dzimy mieli b�edu zwiazanego ze zniknieciem h^2*K1
