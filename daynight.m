
%% read your day file in variable day
day = imread('nycday.jpg');
day_bw= rgb2gray(day);

% show the day file
figure;imshow(day_bw)

%% read your night file in variable night
night = imread('nycnight2.jpg'); %% 
night_bw= rgb2gray(night);

% show the night file.
figure;imshow(night_bw)

% the main idea behind the algorithm is to find the average number of black pixel.
black_pixel=0;
x = day_bw;
imshow(x);
sz= size(x);

for i = 1:sz(1);
    for j = 1:sz(2);
        
        if x(i,j)<80
            black_pixel = black_pixel +1;
        end
    end
end

sx = sz(1)*sz(2);

% if the number of pixel in an image are black more than 35% then its a night. can vary if there are a lot of shadows.
if (black_pixel*100)/sx > 35
    disp('night')
else 
    disp('day')
end
