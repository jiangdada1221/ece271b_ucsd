training = X_train'; %784*60000
H=[10,20,50];
error_train_sgd_sigmoid = {};
error_test_sgd_sigmoid = {};
y_for_shuffle = y_train_one;
error_train_sgd_sigmoid_result = zeros(3,1);
error_test_sgd_sigmoid_result = zeros(3,1);
for i=1:3
% for i =1:3
    h=H(i);
    w1 = initialize(h,784);
    w2 = initialize(10,h);
    epoch =15 ;
    error_train_b2 = zeros(epoch*60,1);
    error_test_b2 = zeros(epoch*60,1);
	l_rate = 1e-2;

    for epo = 1:epoch
        shuffle = randperm(60000);
        training = training(:,shuffle);  %shuffle   % but y is going to shuffle too!!!
        y_for_shuffle = y_for_shuffle(:,shuffle);
        for t = 1:60000
        %forward
            train = training(:,t); %784 * 1
            z1 = w1*train;   % h * 1
            % h * 1
            A1 = sigmoid(z1);
            z2 = w2*A1;        %10 * 1
            A2 = softmax(z2);  % 10 * 1

            %backward
            dz2 = A2 - y_for_shuffle(:,t);  %10 * 1
            dw2 = dz2*(A1');        % 10 * 1 X 1 * h = 10 * h

            dz1 = (w2' * dz2) .* (A1 .* (1-A1));  %h*1 .* h*1
            dw1 = dz1 * train';   %h*1 X 1*784 = h*784

            w1 = w1 - l_rate * dw1;
            w2 = w2 - l_rate * dw2;

            if mod(t,1000) == 0
                error_train_b2(t/1000+(epo-1)*60,1) = com_error2(w1,w2,X_train,y_train);
                error_test_b2(t/1000+(epo-1)*60,1) = com_error2(w1,w2,X_test,y_test);
            end
        end
    end
error_train_sgd_sigmoid_result(i) = error_train_b2(epoch*60);
error_test_sgd_sigmoid_result(i) = error_test_b2(epoch*60);
figure;
plot(linspace(0,epoch,epoch*60),error_train_b2);
hold on;
plot(linspace(0,epoch,epoch*60),error_test_b2);
xlabel('epoch');ylabel('probability of error');
set(gca,'xtick',0:epoch);
xlim([0,epoch+1]);
legend('train','test');
title(['sigmoid,' ' ' 'h=' num2str(h)]); 
end
% end
% cost = 0;
% for i = 1:60000
%     cost = cost - log(A2(y_train(i)+1,i));
% end