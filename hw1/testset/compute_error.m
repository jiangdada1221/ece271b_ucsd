error_c = zeros(1,6);
dets = zeros(1,6);
inverses = {};
for i = 1:6
    dets(i) = det(sigmaz{i});
    inverses{i} = pinv(sigmaz{i});
end
for i = 6:11
    data = tests{i}; %10*2500
    data = (fi * data')';%10*15
    wrong = 0;
    for k = 1:10
        point = (data(k,:))';
        refer = (point-uz{i-5})'* inverses{i-5} * (point-uz{i-5}) + log(dets(i-5));
        for j = 1:6
            if j == i-5
                continue;
            end
            compared = (point-uz{j})'* inverses{j} * (point-uz{j}) + log(dets(j));
            if compared <= refer
                wrong = wrong + 1;
                break;
            end
        end
    end
    error_c(i-5) = wrong / 10;
end