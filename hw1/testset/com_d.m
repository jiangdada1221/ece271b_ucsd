error_d = zeros(1,6);
data = tests{6};
wrong = 0;
for k = 1:10
    point = data(k,:); %1*2500
    for i = 1:5  %wi 2500*1
        prob1 = log(sigmad{2*i-1}) + 0.5*(point*w{i}-ud{2*i-1})^2/sigmad{2*i-1};
        prob2 = log(sigmad{2*i}) + 0.5*(point*w{i}-ud{2*i})^2/sigmad{2*i};
        if prob2 <= prob1
            wrong = wrong+1;
            break;
        end
    end
end
error_d(1) = wrong/10;

%compute for class 2
data=tests{7};
wrong=0;
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmad{1}) + 0.5*(point*w{1}-ud{1})^2/sigmad{1};
    prob2 = log(sigmad{2}) + 0.5*(point*w{1}-ud{2})^2/sigmad{2};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 6:9
        prob1 = log(sigmad{2*i-1}) + 0.5*(point*w{i}-ud{2*i-1})^2/sigmad{2*i-1};
        prob2 = log(sigmad{2*i}) + 0.5*(point*w{i}-ud{2*i})^2/sigmad{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_d(2) = wrong/10;
%compute for class3
wrong=0;
data = tests{8};
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmad{3}) + 0.5*(point*w{2}-ud{3})^2/sigmad{3};
    prob2 = log(sigmad{4}) + 0.5*(point*w{2}-ud{4})^2/sigmad{4};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{11}) + 0.5*(point*w{6}-ud{11})^2/sigmad{11};%2
    prob2 = log(sigmad{12}) + 0.5*(point*w{6}-ud{12})^2/sigmad{12};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 10:12
        prob1 = log(sigmad{2*i-1}) + 0.5*(point*w{i}-ud{2*i-1})^2/sigmad{2*i-1};
        prob2 = log(sigmad{2*i}) + 0.5*(point*w{i}-ud{2*i})^2/sigmad{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_d(3) = wrong/10;

%for class4
wrong=0;
data = tests{9};
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmad{5}) + 0.5*(point*w{3}-ud{5})^2/sigmad{5};
    prob2 = log(sigmad{6}) + 0.5*(point*w{3}-ud{6})^2/sigmad{6};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{13}) + 0.5*(point*w{7}-ud{13})^2/sigmad{13};%2
    prob2 = log(sigmad{14}) + 0.5*(point*w{7}-ud{14})^2/sigmad{14};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{19}) + 0.5*(point*w{10}-ud{19})^2/sigmad{19};%2
    prob2 = log(sigmad{20}) + 0.5*(point*w{10}-ud{20})^2/sigmad{20};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 13:14
        prob1 = log(sigmad{2*i-1}) + 0.5*(point*w{i}-ud{2*i-1})^2/sigmad{2*i-1};
        prob2 = log(sigmad{2*i}) + 0.5*(point*w{i}-ud{2*i})^2/sigmad{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_d(4) = wrong/10;

%class5
wrong=0;
data = tests{10};
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmad{7}) + 0.5*(point*w{4}-ud{7})^2/sigmad{7};
    prob2 = log(sigmad{8}) + 0.5*(point*w{4}-ud{8})^2/sigmad{8};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{15}) + 0.5*(point*w{8}-ud{15})^2/sigmad{15};%2
    prob2 = log(sigmad{16}) + 0.5*(point*w{8}-ud{16})^2/sigmad{16};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{21}) + 0.5*(point*w{11}-ud{21})^2/sigmad{21};%2
    prob2 = log(sigmad{22}) + 0.5*(point*w{11}-ud{22})^2/sigmad{22};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{25}) + 0.5*(point*w{13}-ud{25})^2/sigmad{25};%2
    prob2 = log(sigmad{26}) + 0.5*(point*w{13}-ud{26})^2/sigmad{26};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 15:15
        prob1 = log(sigmad{2*i-1}) + 0.5*(point*w{i}-ud{2*i-1})^2/sigmad{2*i-1};
        prob2 = log(sigmad{2*i}) + 0.5*(point*w{i}-ud{2*i})^2/sigmad{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_d(5) = wrong/10;

%6
wrong=0;
data = tests{11};
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmad{9}) + 0.5*(point*w{5}-ud{9})^2/sigmad{9};
    prob2 = log(sigmad{10}) + 0.5*(point*w{5}-ud{10})^2/sigmad{10};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{17}) + 0.5*(point*w{9}-ud{17})^2/sigmad{17};%2
    prob2 = log(sigmad{18}) + 0.5*(point*w{9}-ud{18})^2/sigmad{18};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{23}) + 0.5*(point*w{12}-ud{23})^2/sigmad{23};%2
    prob2 = log(sigmad{24}) + 0.5*(point*w{12}-ud{24})^2/sigmad{24};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{27}) + 0.5*(point*w{14}-ud{27})^2/sigmad{27};%2
    prob2 = log(sigmad{28}) + 0.5*(point*w{14}-ud{28})^2/sigmad{28};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmad{29}) + 0.5*(point*w{15}-ud{29})^2/sigmad{29};%2
    prob2 = log(sigmad{30}) + 0.5*(point*w{15}-ud{30})^2/sigmad{30};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
end
error_d(6) = wrong/10;
