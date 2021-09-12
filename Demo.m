%% load pre-trained model
 load sdnet_rgb_model;  
 
%% load test set
clean_image = imread('test_images\baboon.png');

%% load ground true sigma map or create a single sigma or sigma map
load ground_true_sigma_map/true_sigma_maps
sigma_map = squeeze(smaps(4,1,:,:)); % nnoise level 4 and type 1 from our set of ground truth sigma maps

%% estimate sigma map
noisy_image = make_noisy_image(clean_image,sigma_map);
 
estimated_sigma_map =im_proc(noisy_image,sdnet);

figure, imshow(uint8(clean_image))
title('clean image')
figure, imshow(uint8(noisy_image))
title('Noisy image')
figure, imshow(estimated_sigma_map,[])
title('Estimated sigma map')
