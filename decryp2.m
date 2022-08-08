function B=decryp2(str,key)
l=length(str);
l2=length(key);
for i=1:l
    if mod(i,l2)
        b=mod(i,l2);
    else
        b=l2;
    end
    c=ltr_mrs(key(b),1);
    B(i)=char(mod((128*(ceil(c/128)+1)+double(str(i))-c),128));
end
end