img = imread('mario.jpg');

[height, width, channels] = size(img);
scale = 2;

disp(width);
disp(height);

img = imresize(img, 1/scale);  % resize the image
[height, width, channels] = size(img);  % new dimensions

disp(width);
disp(height);

grid = cell(height, width);

% converting to grayscale
if channels == 3
    img = rgb2gray(img);
end

for i = 1:height
    for j = 1:width
        grid{i, j} = 'X'; 
    end
end

for i = 1:height
    for j = 1:width
        pixel_value = img(i, j); 
        if pixel_value == 0
            grid{i, j} = '#';
        elseif pixel_value >= 1 && pixel_value <= 100
            grid{i, j} = 'X';
        elseif pixel_value >= 101 && pixel_value <= 200
            grid{i, j} = '%';
        elseif pixel_value >= 201 && pixel_value <= 300
            grid{i, j} = '&';
        elseif pixel_value >= 301 && pixel_value <= 400
            grid{i, j} = '*';
        elseif pixel_value >= 401 && pixel_value <= 500
            grid{i, j} = '+';
        elseif pixel_value >= 501 && pixel_value <= 600
            grid{i, j} = '/';
        elseif pixel_value >= 601 && pixel_value <= 700
            grid{i, j} = '(';
        elseif pixel_value >= 701 && pixel_value <= 800
            grid{i, j} = "'";
        else
            grid{i, j} = ' ';
        end
    end
end

for i = 1:height
    disp([grid{i, :}]);
end
