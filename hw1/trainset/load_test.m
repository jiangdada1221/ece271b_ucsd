root = 'subset';
tests={};

for k = 6:11
    d = strcat(root,num2str(k));
    s = dir(fullfile(d,'*.jpg'));
    test = zeros(10,2500);
    for i = 1:length(s)
        file = s(i);
        fileName = strcat(d,'/',file.name);
        test(i,:) = reshape(imread(fileName),1,2500);
    end
    test = test*1.0/255;
    tests{k} = test;
end