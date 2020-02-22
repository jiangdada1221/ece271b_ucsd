function error = com_error(w,x,y)
z = w * x';
z = softmax(z);
[~,I] = max(z);
[m,~] = size(x);
I = I-1;
s = sum(I ~= y');
error = s / m;
end