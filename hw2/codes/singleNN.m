training = X_train';
%%forward
w = initialize(10,784);
iter=3500;
error_train_single = zeros(iter,1);
error_test_single = zeros(iter,1);
%begin
l_rate = 1e-5;
for t = 1:iter
z1 = w * training;
A1 = softmax(z1);   %10*60000
%backward
dz = A1 - y_train_one;
dw = dz * training';
w = w - l_rate * dw;
error_train_single(t,1) = com_error(w,X_train,y_train);
error_test_single(t,1) = com_error(w,X_test,y_test);
end
