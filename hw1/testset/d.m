ud = {};  %need 15 elements
sigmad = {};
%begin 1-2,1-3,1-4,1-5,1-6
for i = 1:5
    wi = w{i};  %2500 * 1
    datai1 = trains{1}; %40*2500
    datai2 = trains{i+1};
    datai1 = datai1 * wi; %1-i u 40 * 1
    datai2 = datai2 * wi; %i-1 u 40 * 1
    ud{2*i-1} = mean(datai1);
    sigmad{2*i-1} = cov(datai1);
    ud{2*i} = mean(datai2);
    sigmad{2*i} = cov(datai2);
end

%begin 2-1 !2-3 2-4 2-5 2-6
%2-1 has already computed
for i = 6:9
    wi = w{i};
    datai1 = trains{2};
    datai2 = trains{i-3};
    datai1 = datai1 * wi;
    datai2 = datai2 * wi;
    ud{2*i-1} = mean(datai1);
    sigmad{2*i-1} = cov(datai1);
    ud{2*i} = mean(datai2);
    sigmad{2*i} = cov(datai2);
end

%begin 3-4 3-5 3-6
for i = 10:12
    wi = w{i};
    datai1 = trains{3};
    datai2 = trains{i-6};
    datai1 = datai1 * wi;
    datai2 = datai2 * wi;
    ud{2*i-1} = mean(datai1);
    sigmad{2*i-1} = cov(datai1);
    ud{2*i} = mean(datai2);
    sigmad{2*i} = cov(datai2);
end

%begin 4-5 4-6
for i = 13:14
    wi = w{i};
    datai1 = trains{4};
    datai2 = trains{i-8};
    datai1 = datai1 * wi;
    datai2 = datai2 * wi;
    ud{2*i-1} = mean(datai1);
    sigmad{2*i-1} = cov(datai1);
    ud{2*i} = mean(datai2);
    sigmad{2*i} = cov(datai2);
end

%begin 5-6
for i = 15:15
    wi = w{i};
    datai1 = trains{5};
    datai2 = trains{i-9};
    datai1 = datai1 * wi;
    datai2 = datai2 * wi;
    ud{2*i-1} = mean(datai1);
    sigmad{2*i-1} = cov(datai1);
    ud{2*i} = mean(datai2);
    sigmad{2*i} = cov(datai2);
end