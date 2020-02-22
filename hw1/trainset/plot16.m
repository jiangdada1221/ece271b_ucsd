for i=1:16
    subplot(4,4,i);
    mat = big16(:,i);
    mat = mat2gray(reshape(mat,50,50));
    imshow(mat);
    title(num2str(i));
end