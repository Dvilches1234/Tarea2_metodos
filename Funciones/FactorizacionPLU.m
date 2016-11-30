function [l,u,P] = FactorizacionPLU(a) 
    if det(a) == 0
        l=-1;
        u = -1;
        P = -1;
        return 
    end
    f= size(a, 1);
    c = size(a, 2);
    l = eye(f, c);  
    P = eye(f, c);
    if c>f
      c,f=f,c
    end
    for j = 1 : c 
        a(j,j)
        if a(j, j) == 0
            [val,idx] = max(abs(a(:,j)));
            idx
            %Swapeamos manualmente matriz a
            temp = a(j,:)
            a(j,:)=a(int8(floor(idx)),:);
            a(int8(floor(idx)),:)=temp;
            a
            %Swapeamos manualmente matriz P
            temp = P(j,:);
            P(j,:)=P(int8(floor(idx)),:);
            P(int8(floor(idx)),:)=temp;
            P
        end

        for i = j + 1 : f 
            l(i,j) = a(i, j)/a(j, j);
            m = l(i, j) 
            for k = j : f  
                a(i, k) = a(i, k) - (m * a(j, k));
            end 
        end 

    end
    u = a;
    return
end

