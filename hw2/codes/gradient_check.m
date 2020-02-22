%check for w (w is already computed
%%forward
w_check1 = w;
w_check1(1,59) = w(1,59) + 1e-7;
w_check2 = w;
w_check2(1,59) = w(1,59)-1e-7;
%begin
z11 = w_check1 * training;
A11 = softmax(z11);   %10*60000
% cost = y_train' * A1;
% cost = sum(diag(cost));
cost1=0;
for i =1:60000
    cost1 = cost1 - log(A11(y_train(i)+1,i));
end

z12 = w_check2 * training;
A12 = softmax(z12);
cost2=0;
for i =1:60000
    cost2 = cost2 - log(A12(y_train(i)+1,i));
end

gradient = (cost1-cost2)/(2e-7);