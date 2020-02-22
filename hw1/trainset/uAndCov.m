mu = {};
sigma = {};
for k = 1:6
    data = trains{k};
    mu{k} = (mean(data))';
    sigma{k} = cov(data);
end

