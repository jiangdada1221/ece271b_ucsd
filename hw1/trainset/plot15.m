for i = 1:15
    subplot(4,4,i);
    data = w{i};
    data = mat2gray(reshape(data,50,50));
    imshow(data);
    title(num2str(i));
end