root = 'subset';
trains = {};

for k = 1:6
    d = strcat(root,num2str(k-1));
    s = dir(fullfile(d,'*.jpg'));
    train = zeros(40,2500);
    for i = 1:length(s)
        file = s(i);
        fileName = strcat(d,'/',file.name);
        train(i,:) = reshape(imread(fileName),1,2500);
    end
    train = train*1.0/255;
    trains{k} = train;
end

