close all;
clc;

colored_img = imread("lena.png");
bw_img = rgb2gray(colored_img);
salted_img = imnoise(bw_img,'salt & pepper',0.1);
img = salted_img;


[m,n] = size(img);
output = zeros(m,n);

radius = 5;

for i = 1:m
    for j = 1:n
        row_start = max(1,i-radius);
        row_end = min(m,i+radius);
        col_start = max(1,j-radius);
        col_end = min(n,j+radius);

        kernel = img(row_start:row_end,col_start:col_end);
        output(i,j) = median(kernel(:));
    end
end

output = uint8(output);

figure("Name","Median Filter");
set(gcf, 'Position', get (0, 'ScreenSize'));
subplot (141) , imshow (colored_img), title ('Original Colored Image');
subplot (142) , imshow (bw_img), title ('Original Image');
subplot (143), imshow (salted_img) , title ('Noisy Image');
subplot (144), imshow (output), title ('Output of Median Filter');