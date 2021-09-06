# SDNet

# Learning Based Noise Component Map Estimation for Image Denoising , link to the paper

 ##  Abstract 
 Problem  of  image  denoising  when  images  arecorrupted  by  a  non-stationary  noise  is  considered  in  this  paper.Since  in  practice  no  a  priori  information  on  noise  is  available,often   noise   statistics   should   be   estimated   before   applying   adenoising   method.   In   this   paper   a   method   of   estimation   ofmap  of  local,  patch-wise,  standard  deviations  of  noise  (so-calledsigma-map) is proposed. The method based on deep convolutionalneural network shows state-of-the-art accuracy of estimation bothsigma-map  for  non-stationary  noise  and  variance  for  additivewhite  Gaussian  noise.  Extensive  experiments  on  image  denois-ing  using  estimated  sigma-maps  demonstrate  that  our  methodoutperforms  state-of-the-art  blind  image  denoising  methods  (byup to 6 dB in PSNR) as well as other methods based on sigma-map estimation (up to 0.5 dB), providing better usage flexibility.Comparison  with  an  ideal  case  when  denoising  is  applied  withthe ground-truth sigma-map shows that a difference in PSNR formost  of  noise  levels  is  0.1-0.2  dB  and  does  not  exceeds  0.6  db.
 
 + **Structure scheme of proposed SDNet (SConv - stride convolution , TConv - transpose convolution)**
![pic1](https://user-images.githubusercontent.com/31028574/132021861-0cbd4ba0-31d4-46c9-9ede-79c67e496010.PNG)
                                 
download both color and gray scale test set [here](https://drive.google.com/file/d/1n1fjtjQd7tvuDO7M4hSaaf6d7W2xpHSR/view?usp=sharing)
Here is the to [pre-trained gary scale model](https://drive.google.com/file/d/1BUkK6Ul1supB_mcjfxeUVxWtZ6VBdjLk/view?usp=sharing) and [pre-trained color model](https://drive.google.com/file/d/1na7CvWsk5CrmSHWbG3HQTJEcRplaOFgQ/view?usp=sharing)

### Requirements ###
MATLAB 2021

### Tetsing ###
run ``` demo.m ```

### Result of testing ###

|![baboon_noisy_6_2](https://user-images.githubusercontent.com/31028574/132094411-fdd4e76a-9b11-4821-b7a8-f340b4ecc266.png) | ![sigma_map_6_2](https://user-images.githubusercontent.com/31028574/132094440-2c123b46-c18c-4c3f-8b8d-71d1bcbd3972.png) |![true_sigma_6_2](https://user-images.githubusercontent.com/31028574/132094966-a9f01d95-790e-42fd-9df3-37eb9eab8f2a.png)|
|:---:|:---:|:---:|
|<i>(a) Noisy image with noise level = 30 (second noise model) </i>|<i>(b) Estimated sigma map </i>|<i>(c) True sigma map </i>|




