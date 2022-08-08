function B=decryp1(str,key)
n=length(str);
l=length(key);
for i=1:n
    if mod(i,l)
        p=mod(i,l);
    else
        p=l;
    end
    B(i)=char(mod(128+double(str(i))-double(key(p)),128));
end
end