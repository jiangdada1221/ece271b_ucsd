function error = com_error2_relu(w1,w2,x,y)
z1 = w1 * x';
A1 = relu(z1);
z2 = w2 * A1;
A2 = softmax(z2);
[~,I] = max(A2);
[m,~] = size(x);
I = I-1;
s = sum(I ~= y');
error = s / m;
end