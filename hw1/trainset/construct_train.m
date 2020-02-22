root = 'subset';
trainImages = zeros(240,2500);
for k = 1:6
    d = strcat(root,num2str(k-1));
    s = dir(fullfile(d,'*.jpg'));
    for i = 1:length(s)
        file = s(i);
        fileName = strcat(d,'/',file.name);
        trainImages((k-1)*40+i,:) = reshape(imread(fileName),1,2500);
    end
end

trainImages = trainImages*1.0/255;