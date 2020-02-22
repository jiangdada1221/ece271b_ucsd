wnew = {};
index=1;
for i = 1:6
    sigmai = sigmae{i};
    mui = ue{i};
    for j = (i+1):6
        sigmaj = sigmae{j};
        muj = ue{j};
        wnew{index} = pinv(sigmai+sigmaj+eye(30))*(mui-muj);
        index = index+1;
    end
end