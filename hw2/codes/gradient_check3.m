w1 = initialize(10,784);
w2 = initialize(10,10);
w1check1 = w1;
w1check2=w1;
w1check1(2,186) = w(2,186) + 1e-7;
w1check2(2,186) = w(2,186) - 1e-7;
[~,cost1] = forward(w1check1,w2,X_train,y_train,y_train_one);
[~,cost2] = forward(w1check2,w2,X_train,y_train,y_train_one);
grad = (cost1 - cost2) / (2e-7);
[gradMy,~] = forward(w1,w2,X_train,y_train,y_train_one);

function [in,cost] = forward(w1,w2,X_train,y_train,y_train_one)
training = X_train';
% size(w1)
% size(training)
z1 = w1*training;
A1 = sigmoid(z1);
z2 = w2*A1;
A2 = softmax(z2);

cost = 0;
for i = 1:60000
    cost = cost - log(A2(y_train(i)+1,i));
end
dz2 = A2 - y_train_one;  %10 * 60000
dw2 = dz2*(A1');        % 10 * h

dz1 = (w2' * dz2) .* (A1 .* (1-A1));  %h*60000 .* h*60000 
dw1 = dz1 * training';

in = dw1(2,186);



end

