training = X_train';
H=[10,20,50];
error_train_B2_sigmoid = {};
error_test_B2_sigmoid = {};

% for i =1:3
h = 10;
w1 = initialize(h,784);
w2 = initialize(10,h);
iter=5000;
error_train_b2 = zeros(iter,1);
error_test_b2 = zeros(iter,1);
l_rate = 2e-6;
lambda = 0.0001;
for t = 1:iter
%forward
z1 = w1*training;   % h * 60000
A1 = sigmoid(z1);   % h * 60000

z2 = w2*A1;        %10 * 60000
A2 = softmax(z2);  % 10 * 60000

%backward
dz2 = A2 - y_train_one;  %10 * 60000
dw2 = dz2*(A1');        % 10 * h
dw2 = dw2 + 2*w2*lambda/l_rate;

dz1 = (w2' * dz2) .* (A1 .* (1-A1));  %h*60000 .* h*60000 
dw1 = dz1 * training';
dw1 = dw1 + 2*w1*lambda/l_rate;

w1 = w1 - l_rate * dw1;
w2 = w2 - l_rate * dw2;
error_train_b2(t,1) = com_error2(w1,w2,X_train,y_train);
error_test_b2(t,1) = com_error2(w1,w2,X_test,y_test);

end
error_train_B2_sigmoid{1} = error_train_b2;
error_test_B2_sigmoid{1} = error_test_b2;
figure;
plot(linspace(1,iter,iter),error_train_b2);
hold on;
plot(linspace(1,iter,iter),error_test_b2);
xlabel('iteration');ylabel('probability of error');
xlim([0,iter+200]);
legend('train','test');
title(['sigmoid,' ' ' 'h=' num2str(h)]); 
% end
% cost = 0;
% for i = 1:60000
%     cost = cost - log(A2(y_train(i)+1,i));
% end