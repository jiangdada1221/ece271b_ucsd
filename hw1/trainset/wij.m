w = {};
index=1;
for i = 1:6
    sigmai = sigma{i};
    mui = mu{i};
    for j = (i+1):6
        sigmaj = sigma{j};
        muj = mu{j};
        w{index}  = pinv(sigmai+sigmaj+eye(2500)) * (mui - muj);
        index = index+1;
    end
end