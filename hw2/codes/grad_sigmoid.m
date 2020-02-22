a = magic(3);
aup = a + 1e-7;
adown = a - 1e-7;

deri = (sigmoid(aup) - sigmoid(adown)) / (2e-7);
dericom = sigmoid(a) .* (1-sigmoid(a));