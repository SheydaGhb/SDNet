# SDNet

# Learning Based Noise Component Map Estimation for Image Denoising , link to the paper

 ##  Abstract 
 Problem  of  image  denoising  when  images  are corrupted  by  a  non-stationary  noise  is  considered  in  this  paper. Since  in  practice  no  a  priori  information  on  noise  is  available, often   noise   statistics   should   be   estimated   before   applying   adenoising   method.   In   this   paper   a   method   of   estimation   of map  of  local,  patch-wise,  standard  deviations  of  noise  (so-calledsigma-map) is proposed. The method based on deep convolutional neural network shows state-of-the-art accuracy of estimation both sigma-map  for  non-stationary  noise  and  variance  for  additive white  Gaussian  noise.  Extensive  experiments  on  image  denoising  using  estimated  sigma-maps  demonstrate  that  our  methodout performs  state-of-the-art  blind  image  denoising  methods  (by up to 6 dB in PSNR) as well as other methods based on sigma-map estimation (up to 0.5 dB), providing better usage flexibility. Comparison  with  an  ideal  case  when  denoising  is  applied  with the ground-truth sigma-map shows that a difference in PSNR for most  of  noise  levels  is  0.1-0.2  dB  and  does  not  exceeds  0.6  db.
 
 + **Structure scheme of proposed SDNet (SConv - stride convolution , TConv - transpose convolution)**
![pic1](https://user-images.githubusercontent.com/31028574/132021861-0cbd4ba0-31d4-46c9-9ede-79c67e496010.PNG)
        
  ### Network structure ###
  Run ``` sdnet_rgb_structure.m ```  and ``` sdnet_gray_structure.m ``` for observing structure of network in detail and layers. <i> AnalyzeNetwork </i> tool of MATLAB can be used for furthur analysis.
        
Download color and gray scale test set from 
There are two models available one for estimating sigma-map of grayscale images and the other one for rgb color images. Here is the link to pre-trained SDNet models [pre-trained gary scale] and [pre-trained color]

### Requirements ###
MATLAB 2021

### Tetsing ###
For estimating  sigma-map of a single noisy image run ``` Demo.m ``` 

### Result of testing ###

<p align="center">
<i> Relative error ε<sub>m</sub> of sigma-maps estimation, σ<sub>av</sub> is mean standard deviation of sigma-map </i>
</p>
<p align="center">
   <img src="https://user-images.githubusercontent.com/31028574/132628960-887a799a-be03-4855-8f37-dd4e25240eb8.PNG" alt="table2"/>
</p>


![results](https://user-images.githubusercontent.com/31028574/132587303-b2a153d9-ee20-4046-bd0e-39e816a83c61.PNG)
<p align="center">
<i> Ground truth sigma-maps for σ<sub>m</sub> = 5,7,10 and results of estimations by compared methods,SDNet estimated sigma-map has the smallest relative error </i>
</p>
