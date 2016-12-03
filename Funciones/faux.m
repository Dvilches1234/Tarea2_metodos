function res = faux(x,f)
    if x==size(f)
        res=0;
    else
        res=f(x+1)

end