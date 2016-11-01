function [l,u]=funlu(m)
    siz=size(m);
    sz=siz(1,1);
    mi=eye(sz);
    for l=1:sz-1     
    for j=l+1:sz    
    k1=(m(j,l)/m(l,l));
     for i=1:sz
         m(j,i)=m(j,i)-k1*m(l,i);
         mi(j,i)=mi(j,i)-k1*mi(l,i);
     end
    end
    end
    m
    mi
    u=m;
    
end

