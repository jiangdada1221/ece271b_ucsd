function output = softmax(Y)
Y = exp(Y);
sumOfRow = sum(Y,1);
output = Y ./ sumOfRow;
end