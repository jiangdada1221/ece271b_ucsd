error_e = zeros(1,6);
data = tests{6}*fi;
wrong = 0;
for k = 1:10
    point = data(k,:); %1*2500
    for i = 1:5  %wi 2500*1
        prob1 = log(sigmaE{2*i-1}) + 0.5*(point*wnew{i}-uE{2*i-1})^2/sigmaE{2*i-1};
        prob2 = log(sigmaE{2*i}) + 0.5*(point*wnew{i}-uE{2*i})^2/sigmaE{2*i};
        if prob2 <= prob1
            wrong = wrong+1;
            break;
        end
    end
end
error_e(1) = wrong/10;

%compute for class 2
data=tests{7}*fi;
wrong=0;
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmaE{1}) + 0.5*(point*wnew{1}-uE{1})^2/sigmaE{1};
    prob2 = log(sigmaE{2}) + 0.5*(point*wnew{1}-uE{2})^2/sigmaE{2};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 6:9
        prob1 = log(sigmaE{2*i-1}) + 0.5*(point*wnew{i}-uE{2*i-1})^2/sigmaE{2*i-1};
        prob2 = log(sigmaE{2*i}) + 0.5*(point*wnew{i}-uE{2*i})^2/sigmaE{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_e(2) = wrong/10;
%compute for class3
wrong=0;
data = tests{8}*fi;
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmaE{3}) + 0.5*(point*wnew{2}-uE{3})^2/sigmaE{3};
    prob2 = log(sigmaE{4}) + 0.5*(point*wnew{2}-uE{4})^2/sigmaE{4};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{11}) + 0.5*(point*wnew{6}-uE{11})^2/sigmaE{11};%2
    prob2 = log(sigmaE{12}) + 0.5*(point*wnew{6}-uE{12})^2/sigmaE{12};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 10:12
        prob1 = log(sigmaE{2*i-1}) + 0.5*(point*wnew{i}-uE{2*i-1})^2/sigmaE{2*i-1};
        prob2 = log(sigmaE{2*i}) + 0.5*(point*wnew{i}-uE{2*i})^2/sigmaE{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_e(3) = wrong/10;

%for class4
wrong=0;
data = tests{9}*fi;
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmaE{5}) + 0.5*(point*wnew{3}-uE{5})^2/sigmaE{5};
    prob2 = log(sigmaE{6}) + 0.5*(point*wnew{3}-uE{6})^2/sigmaE{6};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{13}) + 0.5*(point*wnew{7}-uE{13})^2/sigmaE{13};%2
    prob2 = log(sigmaE{14}) + 0.5*(point*wnew{7}-uE{14})^2/sigmaE{14};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{19}) + 0.5*(point*wnew{10}-uE{19})^2/sigmaE{19};%2
    prob2 = log(sigmaE{20}) + 0.5*(point*wnew{10}-uE{20})^2/sigmaE{20};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 13:14
        prob1 = log(sigmaE{2*i-1}) + 0.5*(point*wnew{i}-uE{2*i-1})^2/sigmaE{2*i-1};
        prob2 = log(sigmaE{2*i}) + 0.5*(point*wnew{i}-uE{2*i})^2/sigmaE{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_e(4) = wrong/10;

%class5
wrong=0;
data = tests{10}*fi;
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmaE{7}) + 0.5*(point*wnew{4}-uE{7})^2/sigmaE{7};
    prob2 = log(sigmaE{8}) + 0.5*(point*wnew{4}-uE{8})^2/sigmaE{8};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{15}) + 0.5*(point*wnew{8}-uE{15})^2/sigmaE{15};%2
    prob2 = log(sigmaE{16}) + 0.5*(point*wnew{8}-uE{16})^2/sigmaE{16};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{21}) + 0.5*(point*wnew{11}-uE{21})^2/sigmaE{21};%2
    prob2 = log(sigmaE{22}) + 0.5*(point*wnew{11}-uE{22})^2/sigmaE{22};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{25}) + 0.5*(point*wnew{13}-uE{25})^2/sigmaE{25};%2
    prob2 = log(sigmaE{26}) + 0.5*(point*wnew{13}-uE{26})^2/sigmaE{26};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    for i = 15:15
        prob1 = log(sigmaE{2*i-1}) + 0.5*(point*wnew{i}-uE{2*i-1})^2/sigmaE{2*i-1};
        prob2 = log(sigmaE{2*i}) + 0.5*(point*wnew{i}-uE{2*i})^2/sigmaE{2*i};
        if prob2 <= prob1
            wrong = wrong + 1;
        end
    end
end
error_e(5) = wrong/10;

%6
wrong=0;
data = tests{11}*fi;
for k = 1:10
    point = data(k,:);
    prob1 = log(sigmaE{9}) + 0.5*(point*wnew{5}-uE{9})^2/sigmaE{9};
    prob2 = log(sigmaE{10}) + 0.5*(point*wnew{5}-uE{10})^2/sigmaE{10};
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{17}) + 0.5*(point*wnew{9}-uE{17})^2/sigmaE{17};%2
    prob2 = log(sigmaE{18}) + 0.5*(point*wnew{9}-uE{18})^2/sigmaE{18};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{23}) + 0.5*(point*wnew{12}-uE{23})^2/sigmaE{23};%2
    prob2 = log(sigmaE{24}) + 0.5*(point*wnew{12}-uE{24})^2/sigmaE{24};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{27}) + 0.5*(point*wnew{14}-uE{27})^2/sigmaE{27};%2
    prob2 = log(sigmaE{28}) + 0.5*(point*wnew{14}-uE{28})^2/sigmaE{28};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
    prob1 = log(sigmaE{29}) + 0.5*(point*wnew{15}-uE{29})^2/sigmaE{29};%2
    prob2 = log(sigmaE{30}) + 0.5*(point*wnew{15}-uE{30})^2/sigmaE{30};%3
    if prob1 <= prob2
        wrong = wrong + 1;
        continue;
    end
end
error_e(6) = wrong/10;
