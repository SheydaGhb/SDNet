
im_noisy = imread('rgb_test_images\baboon_noisy_6_2.png'); %% load noisy image 
load sdnet_rgb_final;  %% load pre-trained model

estimated_sigma_map =im_proc(im_noisy,sdnet);


figure, imshow(im_noisy,[])
title('Noisy image')
figure, imshow(estimated_sigma_map,[])
title('Estimated sigma map')
