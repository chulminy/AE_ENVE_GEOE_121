% Create director called sample_images and
% Copy all the sample MATLAB images into it
sampImgDir = 'sample_images'; % directory of sample images
if ~exist(sampImgDir,'dir')
    mkdir(sampImgDir); 
end
copyfile(fullfile(matlabroot, 'toolbox/images/imdata', '*.*'), sampImgDir, 'f')

% Declare variables
sampImgDir = 'sample_images'; % directory of sample images
filenameImgC = fullfile(sampImgDir, 'autumn.tif'); % image filename
imgC = imread(filenameImgC); % read an image

% Get the image size and print.
imSize = [size(imgC,1) size(imgC,2)];
fprintf("Image size is %d by %d pixels.", imSize(1), imSize(2))
% Get pure RGB components of an image
imgCR = imgC(:,:,1); % Red
imgCG = imgC(:,:,2); % Green
imgCB = imgC(:,:,3); % Blue

figure; 
% Transform each component back into a 3D array
imgCRImg = cat(3,imgCR, zeros(imSize, 'uint8'), zeros(imSize, 'uint8')); % how to use cat
imgCGImg = cat(3, zeros(imSize, 'uint8'), imgCG, zeros(imSize, 'uint8'));
imgCBImg = cat(3, zeros(imSize, 'uint8'), zeros(imSize, 'uint8'), imgCB);
% Plot each channel (RGB)
subplot(141); imshow(imgCRImg); title('Red'); 
subplot(142); imshow(imgCGImg); title('Green'); 
subplot(143); imshow(imgCBImg);  title('Blue');
% Combine the channels to form the colour image
subplot(144); imshow(imgCRImg+imgCGImg+imgCBImg); title('Original Image');

% Another example!
sampImgDir = 'sample_images'; % directory of sample images
url_img = 'https://www.binderholz.com/uploads/tx_frsupersized/NTU-IMG_1725_copy-gross_02.jpg';
url_img_2 = 'https://archinect.imgix.net/uploads/ob/obz8qmquri6zx24a.jpg?auto=compress%2Cformat';
url_img_3 = 'https://images.pexels.com/photos/325044/pexels-photo-325044.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260';
filenameImg = fullfile(sampImgDir, 'img.jpeg'); % image filename
% Download image
urlwrite(url_img, filenameImg);
% Read the image
img = imread(filenameImg); % read an image

% Plot the RGB components in greyscale
figure; 
subplot(141); imshow(img(:,:,1));  title('Red Intensity'); 
subplot(142); imshow(img(:,:,2));  title('Green Intensity'); 
subplot(143); imshow(img(:,:,3));  title('Blue Intensity'); 
subplot(144); imshow(img);  title('Original Image'); 