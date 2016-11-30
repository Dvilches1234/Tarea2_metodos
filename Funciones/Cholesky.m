function [l] = Cholesky(a) 
    f = size(a,1);
    c = size(a,2);
    l = zeros(f, c);

    aux=a;
    if det(a) < 0
        l = -1;
        ltr = -1;
        return
    end
    for i=c:-1:2 %se asume que es una matriz cuadrada
        aux(i,:) = [];
        aux(:,i) = [];
        if det(aux) < 0
            l = -1;
            ltr = -1;
        return
        end
    end

    % ver si a es definida positiva
    val_propios = eig(a);
    reales = isreal(val_propios); % chequear si los val propios son reales
    if reales == false
        l = -1;
        ltr = -1;
        return
    end
    
    for i=1 : size(val_propios) % chequear si los val propios son positivos
        if val_propios(i) < 0
            l = -1;
            ltr = -1;
            return
        end

    for k=1 : c 
        suma = 0;
        for r=1 : k-1 %que llegue a k-1
            suma = suma + l(k,r).^2;
        end
        l(k,k) = sqrt(a(k,k) - suma);
        for j=k+1 : f 
            suma=0;
            for r=1 : k-1 %que llegue a k-1
                suma = suma + l(j,k).*l(k,r);
            end
            l(j,k) = (a(j,k) - suma) / l(k,k);         
        end
    end
    ltr = l.';
    return
end