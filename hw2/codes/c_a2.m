training = X_train';
%%forward
w = initialize(10,784);
epoch = 15;
error_train_b2 = zeros(epoch*60,1);
error_test_b2 = zeros(epoch*60,1);
y_for_shuffle = y_train_one;
%begin
l_rate = 2e-3;
for epo=1:epoch
    shuffle = randperm(60000);
    training = training(:,shuffle);
    y_for_shuffle = y_for_shuffle(:,shuffle);
for t = 1:60000
train = training(:,t);
z1 = w * train;
A1 = softmax(z1);   %10*60000
% cost = y_train' * A1;
% cost = sum(diag(cost));
% cost=0;
% for i =1:60000
%     cost = cost - log(A1(y_train(i)+1,i));
% end

%backward
dz = A1 - y_for_shuffle(:,t);
dw = dz * train';

w = w - l_rate * dw;
if mod(t,1000) == 0
         error_train_b2(t/1000+(epo-1)*60,1) = com_error(w,X_train,y_train);
         error_test_b2(t/1000+(epo-1)*60,1) = com_error(w,X_test,y_test);
end
end
% title(['relu,' ' ' 'h=' num2str(h)]); 
end
error_c2_train = error_train_b2(epoch*60);
error_c2_test = error_test_b2(epoch*60);
figure;
plot(linspace(0,epoch,epoch*60),error_train_b2);
hold on;
plot(linspace(0,epoch,epoch*60),error_test_b2);
xlabel('epoch');ylabel('probability of error');
set(gca,'xtick',0:epoch);
xlim([0,epoch+1]);
legend('train','test');