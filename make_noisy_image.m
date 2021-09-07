function noisy_image = make_noisy_image(clean_image, sigmamap)
noisy_image  = double(clean_image)+ randn(size(clean_image)).*sigmamap;
end

