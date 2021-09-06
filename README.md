# SDNet

# Learning Based Noise Component Map Estimation for Image Denoising , link to the paper

 ##  Abstract 
 Problem  of  image  denoising  when  images  are corrupted  by  a  non-stationary  noise  is  considered  in  this  paper. Since  in  practice  no  a  priori  information  on  noise  is  available, often   noise   statistics   should   be   estimated   before   applying   adenoising   method.   In   this   paper   a   method   of   estimation   of map  of  local,  patch-wise,  standard  deviations  of  noise  (so-calledsigma-map) is proposed. The method based on deep convolutional neural network shows state-of-the-art accuracy of estimation both sigma-map  for  non-stationary  noise  and  variance  for  additive white  Gaussian  noise.  Extensive  experiments  on  image  denoising  using  estimated  sigma-maps  demonstrate  that  our  methodout performs  state-of-the-art  blind  image  denoising  methods  (by up to 6 dB in PSNR) as well as other methods based on sigma-map estimation (up to 0.5 dB), providing better usage flexibility. Comparison  with  an  ideal  case  when  denoising  is  applied  with the ground-truth sigma-map shows that a difference in PSNR for most  of  noise  levels  is  0.1-0.2  dB  and  does  not  exceeds  0.6  db.
 
 + **Structure scheme of proposed SDNet (SConv - stride convolution , TConv - transpose convolution)**
![pic1](https://user-images.githubusercontent.com/31028574/132021861-0cbd4ba0-31d4-46c9-9ede-79c67e496010.PNG)
                                 
Download both color and gray scale test set [here](https://drive.google.com/file/d/1n1fjtjQd7tvuDO7M4hSaaf6d7W2xpHSR/view?usp=sharing)

Here is the link to pre-trained SDNet modles [pre-trained gary scale](https://drive.google.com/file/d/1BUkK6Ul1supB_mcjfxeUVxWtZ6VBdjLk/view?usp=sharing) and [pre-trained color](https://drive.google.com/file/d/1na7CvWsk5CrmSHWbG3HQTJEcRplaOFgQ/view?usp=sharing)

### Requirements ###
MATLAB 2021

### Tetsing ###
For estimating  sigma-map of a single noisy image run ``` demo.m ``` 

### Result of testing ###

![estimated sigma-maps](https://user-images.githubusercontent.com/31028574/132257177-94a00af8-fca9-424e-ac4f-8a9eafddfe33.PNG)
<p align="center">
<i> Ground truth sigma-map and results of its estimation by compared methods </i>
</p>

