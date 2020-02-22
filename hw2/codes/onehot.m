function output=onehot(y,c)

[m,n] = size(y);
output = zeros(c,m);
for i = 1:m
    output(y(i)+1,i)=1;
end

end