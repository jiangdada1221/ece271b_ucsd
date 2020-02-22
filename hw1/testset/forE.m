fi = V(:,2471:2500); %2500*30
%for training

ue = {};
sigmae={};
for k = 1:6
    data = trains{k};
    data = data * fi;
    ue{k} = (mean(data))';
    sigmae{k} = cov(data);
end