function B=level1(text,key)
l=length(text);
l2=length(key);
for i=1:l
    a=double(text(i));
    if mod(i,l2)
        b=mod(i,l2);
    else
        b=l2;
    end
    c=ltr_mrs(key(b),1);
    B(i)=char(mod((a+c),128));
end
    