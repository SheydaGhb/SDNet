# SDNet

# Learning Based Noise Component Map Estimation for Image Denoising , link to the paper

 ##  Abstract 
 Problem  of  image  denoising  when  images  are corrupted  by  a  non-stationary  noise  is  considered  in  this  paper. Since  in  practice  no  a  priori  information  on  noise  is  available, often   noise   statistics   should   be   estimated   before   applying   adenoising   method.   In   this   paper   a   method   of   estimation   of map  of  local,  patch-wise,  standard  deviations  of  noise  (so-calledsigma-map) is proposed. The method based on deep convolutional neural network shows state-of-the-art accuracy of estimation both sigma-map  for  non-stationary  noise  and  variance  for  additive white  Gaussian  noise.  Extensive  experiments  on  image  denoising  using  estimated  sigma-maps  demonstrate  that  our  methodout performs  state-of-the-art  blind  image  denoising  methods  (by up to 6 dB in PSNR) as well as other methods based on sigma-map estimation (up to 0.5 dB), providing better usage flexibility. Comparison  with  an  ideal  case  when  denoising  is  applied  with the ground-truth sigma-map shows that a difference in PSNR for most  of  noise  levels  is  0.1-0.2  dB  and  does  not  exceeds  0.6  db.
 
 + **Structure scheme of proposed SDNet (SConv - stride convolution , TConv - transpose convolution)**
![pic1](https://user-images.githubusercontent.com/31028574/132021861-0cbd4ba0-31d4-46c9-9ede-79c67e496010.PNG)
        
  ### Network structure ###
  Run `` sdnet_rgb_structure.m ```  and `` sdnet_gray_structure.m ``` for observing structure of network in detail and layers. <i>AnalyzeNetwork<i> tool of MATLAB can be used for furthur analysis.
        
Download color and gray scale test set from [here](https://drive.google.com/file/d/1n1fjtjQd7tvuDO7M4hSaaf6d7W2xpHSR/view?usp=sharing)

There are two models available one for estimating sigma-map of grayscale images and the other one for rgb color images. Here is the link to pre-trained SDNet models [pre-trained gary scale](https://drive.google.com/file/d/1BUkK6Ul1supB_mcjfxeUVxWtZ6VBdjLk/view?usp=sharing) and [pre-trained color](https://drive.google.com/file/d/1na7CvWsk5CrmSHWbG3HQTJEcRplaOFgQ/view?usp=sharing)

### Requirements ###
MATLAB 2021

### Tetsing ###
For estimating  sigma-map of a single noisy image run ``` Demo.m ``` 

### Result of testing ###

![estimated sigma-maps](https://user-images.githubusercontent.com/31028574/132257177-94a00af8-fca9-424e-ac4f-8a9eafddfe33.PNG)
<p align="center">
<i> Ground truth sigma-map and results of its estimation by compared methods,SDNet estimated sigma-map has the smallest relative error </i>
</p>


![table_relative_errors](https://user-images.githubusercontent.com/31028574/132303443-5dedf116-d2bb-46b8-a8e2-4fbd3f126855.PNG)
<p align="center">
<i> Relative estimation error ε<sub>m</sub> of sigma-maps, σ<sub>m</sub> is mean standard deviation of sigma-map </i>
</p>

  
