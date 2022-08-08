function y=level2(text,key)
n_text=length(double(text));
n_key=length(double(key));
key_count=1;
for i=1:n_text
    if key_count==n_key+1 
       key_count=1; 
    end
   y(i)=char(mod((double(text(i))+double(key(key_count))),128));
   key_count=key_count+1;
end
end