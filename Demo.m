%% load pre-trained model
 load sdnet_rgb_model;  
 
%% load test set
load ('gtset_color.mat') 
n =1;   %% can be changed from 1 to 24 , since there are 24 test images 
clean_image = squeeze(gtSet(1,:,:,:));

%% load true sigma map or create a single sigma or sigma map
load sigmamap_case1

%% estimate sigma map
noisy_image = make_noisy_image(clean_image,sigmamap_case1);
 
estimated_sigma_map =im_proc(noisy_image,sdnet);

figure, imshow(uint8(noisy_image))
title('Noisy image')
figure, imshow(estimated_sigma_map,[])
title('Estimated sigma map')
