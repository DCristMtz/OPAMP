function dx = Circ(t,x)

%Definicion de los parametros
r1 = 1000;
r2 = 1000;
r3 = 10000;
r4 = 15000;
c1 = 0.1e-6;
c2 = 0.1e-6;

b = (r3+r4)/r3;
alpha = b/(r1*r2*c1*c2);
gamma = (1/(r1*c1))+((1-b)/(r1*c2))+(1/(r2*c1));
ta = 1/(r1*r2*c1*c2);

vi = 1;

%Salida de la ecuacion (desde x1,x2, hasta la segunda derivada de x1,x2)
dx = zeros(2,1);

%%Definicion de la dinamica del sistema representada en espacio de estados
A = [0 1; -ta -gamma];
B = [0; alpha];

dx(1:2) = A*[x(1);x(2)]+B;