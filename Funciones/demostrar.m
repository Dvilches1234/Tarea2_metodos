A=[2,-1,0,0,0,0;-1, 2 ,-1 ,0 ,0 ,0; 0, -1, 2, -1, 0, 0, ;0, 0, -1, 2, -1, 0;0, 0, 0, -1, 2, -1;0, 0, 0, 0, -1, 2]% para una matriz de 6x6 como es comproar me doy este caso 
x=(1/6)*[1;2;3;4;5;6]
% solo para efectos de demostrar, se toma una matriz de orden 6X6, hecho
% que nos dara un n=6

% el vector x segun xe=(1/6)(1,2,3,4,5,6) el cual se multiplica por el
% escalar 1/n+1

det(A) % para demostrar que el sistema tiene solución unica(fundamental)

size(A)
size(x)

b=A*x % el valor que obtenga acá en b sera fundamental para ver si se aproxima
       % a la solución planteada en el enunciado.
       % si bxe se aproxima mucho a b del enunciado, entonces demostrara
       % que es solucion unica, por otra parte basta demostrar que la
       % matriz A tiene det distinto de cero para ver que el sistema en si
       % tiene sulición unica
