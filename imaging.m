function imaging(en_text,level)

n=length(en_text);

I=rand(500,497);
for i=1:500
    for j=1:497
        if I(i,j)>.5
            I(i,j)=1;
        else
            I(i,j)=0;
        end
    end
end

J=logical(I);
 a=dec2bin(n,21);
f=logical(str2num(a(:))');
J(498,491:497)=f(1:7);
J(499,491:497)=f(8:14);
J(500,491:497)=f(15:21);
a=dec2bin(level,7);
J(497,491:497)=logical(str2num(a(:))');

Q=logical(zeros(n,7));
A=dec2bin(double(en_text),7);

for i=1:n
    p=A(i,:);
    q=logical(str2num(p(:))');
    Q(i,:)=q;
end
r=floor(n/500);
for j=1:r
    J(1:500,(7*(j-1)+1):7*j)=Q((500*(j-1)+1):500*j,:);
end
o=mod(n,500);
J(1:o,(7*r+1):7*(r+1))=Q(n-o+1:n,:);
imwrite(J,'new.png');
figure
imshow(J);
end