function B=level3(text,key)
l=length(text);
l2=length(key);
p=ceil(sum(double(key))/l2);
for i=1:l
    if mod(i,l2)
        b=mod(i,l2);
    else
        b=l2;
    end
    q=p+double(key(b));
    B(i)=char(mod(double(text(i))+q,128));
end
end