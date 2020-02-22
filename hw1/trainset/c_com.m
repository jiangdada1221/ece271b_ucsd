fi = big16(:,1:15)';
uz = {};
sigmaz={};
for k = 1:6
    data = (trains{k})';
    z = (fi * data)'; %40*15
    uz{k} = (mean(z))';
    sigmaz{k} = cov(z);
end