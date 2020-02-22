training = X_train';
H=[10,20,50];
error_train_sgd_relu = {};
error_test_sgd_relu = {};
error_train_sgd_relu_result = zeros(3,1);
error_test_sgd_relu_result = zeros(3,1);
y_for_shuffle = y_train_one;

for i =1:3
    h=H(i);    %setting h
    w1 = initialize(h,784)*0.01;
    w2 = initialize(10,h)*0.01;
    epoch=20;   %setting t
    error_train_b2 = zeros(epoch*60,1);
    error_test_b2 = zeros(epoch*60,1);
    l_rate = 2e-3;
    for epo = 1:epoch
        shuffle = randperm(60000);
        training = training(:,shuffle);
        y_for_shuffle = y_for_shuffle(:,shuffle);
        for t = 1:60000
%forward
            train = training(:,t);
            z1 = w1*train;   % h * 60000
            A1 = relu(z1);   % h * 60000

            z2 = w2*A1;        %10 * 60000
            A2 = softmax(z2);  % 10 * 60000

%backward
            dz2 = A2 - y_for_shuffle(:,t);  %10 * 60000
            dw2 = dz2*(A1');        % 10 * h

            drelu = ones(h,1);
            drelu(z1<0) = 0;

            dz1 = (w2' * dz2) .* drelu;  %h*60000 .* h*60000 
            dw1 = dz1 * train';

            w1 = w1 - l_rate * dw1;
            w2 = w2 - l_rate * dw2;
            if mod(t,1000) == 0
                error_train_b2(t/1000+(epo-1)*60,1) = com_error2_relu(w1,w2,X_train,y_train);
                error_test_b2(t/1000+(epo-1)*60,1) = com_error2_relu(w1,w2,X_test,y_test);
            end
        end
    end
error_train_sgd_relu_result(i) = error_train_b2(epoch*60);
error_test_sgd_relu_result(i) = error_test_b2(epoch*60);
figure;
plot(linspace(0,epoch,epoch*60),error_train_b2);
hold on;
plot(linspace(0,epoch,epoch*60),error_test_b2);
xlabel('epoch');ylabel('probability of error');
set(gca,'xtick',0:epoch);
xlim([0,epoch+1]);
legend('train','test');
title(['relu,' ' ' 'h=' num2str(h)]); 
end
% cost = 0;
% for i = 1:60000
%     cost = cost - log(A2(y_train(i)+1,i));
% end