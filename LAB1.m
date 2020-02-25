%zadanie #1
%Formu³y dwupunktowe

f = @(x) sin(x);
fp = @(x) cos(x);
x0 = 3;
y0 = f(x0);


h = logspace(-20,0,100);


fpx0 = fp(x0);
%bezwzglêdny
% ./ jest po to aby podnosi³ ka¿dy element do potêgi
fpx02 = (f(x0+h)-f(x0)) ./ h; 
%wzglêdny
delta = abs((fpx02 - fpx0)/fpx0);

loglog(h, delta, ".");


xlabel('h');
ylabel('b³±d wzglêdny');

%o¶ pozioma krok h ::: im mniejsze h tym mniejszy b³±d
%y b³±d wzglêdny


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% zadanie #2
% Formu³y trzypunktowe

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

% (4*A1(h/2) - A1(h))/h-1 => nie bêdzimy mieli b³edu zwiazanego ze zniknieciem h^2*K1
