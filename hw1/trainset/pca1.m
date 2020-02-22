%train is 240 X 2500 size
covTrain = cov(trainImages);
[V,D] = eig(covTrain);
[~,indexs]=sort(diag(D),'descend');
big16 = zeros(2500,16);
for k = 1:16
    big16(:,k) = V(:,indexs(k));
end

