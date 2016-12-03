function p=lagrang(x,y,v)

n=length(x);
syms t;
p=0;
for i=1:n
    l=1;
    for j=1:n
        if i~=j
            l=l*((t-x(j))/(x(i)-x(j)));
        end
    end
    p=p+l*y(i);
end
p=simplify(p);
t=v;
p=eval(p);
end
        