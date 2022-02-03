# SDNet

# Learning Based Noise Component Map Estimation for Image Denoising , link to the paper

 ##  Abstract 
 Problem  of  image  denoising  when  images  are corrupted  by  a  non-stationary  noise  is  considered  in  this  paper. Since  in  practice  no  a  priori  information  on  noise  is  available, often   noise   statistics   should   be   estimated   before   applying   adenoising   method.   In   this   paper   a   method   of   estimation   of map  of  local,  patch-wise,  standard  deviations  of  noise  (so-calledsigma-map) is proposed. The method based on deep convolutional neural network shows state-of-the-art accuracy of estimation both sigma-map  for  non-stationary  noise  and  variance  for  additive white  Gaussian  noise.  Extensive  experiments  on  image  denoising  using  estimated  sigma-maps  demonstrate  that  our  methodout performs  state-of-the-art  blind  image  denoising  methods  (by up to 6 dB in PSNR) as well as other methods based on sigma-map estimation (up to 0.5 dB), providing better usage flexibility. Comparison  with  an  ideal  case  when  denoising  is  applied  with the ground-truth sigma-map shows that a difference in PSNR for most  of  noise  levels  is  0.1-0.2  dB  and  does  not  exceeds  0.6  db.
 
 + **Structure scheme of proposed SDNet (SConv - stride convolution , TConv - transpose convolution)**
![pic1](https://user-images.githubusercontent.com/31028574/132021861-0cbd4ba0-31d4-46c9-9ede-79c67e496010.PNG)
        
  ### Network structure ###
  Run ``` sdnet_rgb_structure.m ```  and ``` sdnet_gray_structure.m ``` to create initial structures of SDNet both for rgb and gray scale input images. <br />
  Run ``` visulaize_sdnet.m ``` to visualize network structure and see layers in detail.
        
There are two models available one for estimating sigma-map of grayscale images and the other one for rgb color images. Here is the link to pre-trained SDNet models [pre-trained gray scale](https://webpages.tuni.fi/imaging/sdnet/sdnet_gray.mat) and [pre-trained rgb](https://webpages.tuni.fi/imaging/sdnet/sdnet_rgb.mat)

### Requirements ###
MATLAB 2021

### Tetsing ###
For estimating  sigma-map of a single noisy image run ``` Demo.m ``` <br />
You can find mat files of ground truth test images in <i>testset_rgb</i> and <i>testset_grayscale</i> folders <br />
Groud truth sigma maps can be found in <i>ground_true_sigma_maps</i>. you can use ground truth sigma maps to create noisy images. See the example in  ``` Demo.m ```

## Sigma-map estimation results ##


<p align="center">
<i> Relative error ε<sub>m</sub> of sigma-maps estimation, σ<sub>av</sub> is mean standard deviation of sigma-map </i>
</p>
<p align="center">
   <img src="https://user-images.githubusercontent.com/31028574/132628960-887a799a-be03-4855-8f37-dd4e25240eb8.PNG" alt="table2"/>
</p>

LADCT[1] and RHDCT[2] are conventional methods that are based on transform coefficients of image patches. DCAE[3] and VDNet[4] are Neural Network based methods. 

![result1](https://user-images.githubusercontent.com/31028574/132997464-73b36205-6f4f-4474-b4a4-7b54cc21cea5.PNG)
![result2](https://user-images.githubusercontent.com/31028574/132997456-bb7d3d6d-b8f5-46ab-9687-301a395e87fb.PNG)
![result3](https://user-images.githubusercontent.com/31028574/132997458-88a8cc6d-7d19-48ff-9b35-8db619317cb5.PNG)

<p align="center">
<i> Three types of sigma-maps with σ<sub>av</sub> = 5,7,10 and results of estimations by compared methods, SDNet estimated sigma-map shows the smallest relative error in all cases </i>
</p>

## AWGN sigma estimation results ##
SDNet also is used for estimating AWGN sigma value by calculating median of the sigm-map. We have provided relative error ε of AWGN sigma estimation and an examples of this task with  ε values in below. Results are reported both in non-clipped and clipped noise cases </i>

 <p align="center">
<i>Relative error ε of AWGN sigma estimation for non-clipped noise </i>
</p>
<p align="center">
 <img src="https://user-images.githubusercontent.com/31028574/132997632-9d45c425-a10b-4922-a499-11dce7a11311.PNG" alt = "awgn_table_nonclip"/>
</p><br />
 <p align="center"> 
<i>Relative error ε of AWGN sigma estimation for clipped noise </i>
</p>
<p align="center">
 <img src="https://user-images.githubusercontent.com/31028574/132997672-c1d94b6e-8119-4851-8cce-b0508b9a4793.PNG" alt = "awgn_table_clip"/>
</p>


![awgn_pic](https://user-images.githubusercontent.com/31028574/132997703-6c6ac331-b01d-4b63-a34b-c2a0a07eae9d.PNG)

 <p align="center">
<i> One test image is contaminated by non-clipped AWGN with σ = 3,5,7,10,15,20,30,50 and 75, relative errors for methods of SDNet, PCA and IEDD are reported</i>
</p>


## Denoising  examples ##
In addition to ground truth sigma-maps, we have created random sigma-maps to test SDNet estimator and its efficiency in denoising. Denoising is performed by DRUNet[6], both by true sigma-map and estimated sigma-map by SDNet.<br />
![process_chain](https://user-images.githubusercontent.com/31028574/133067025-e44a2c37-4108-418d-be57-b1793ec9e8d3.PNG)
 <p align="center">
<i> Flow chart of denoising by true and estimated sigma-map and DRUNet. σ<sub>av</sub> = 15   </i>
</p>

![process_chain2](https://user-images.githubusercontent.com/31028574/133067663-3ce3ab39-9431-4edd-aeb9-16f08a519d13.PNG)

 <p align="center">
<i> Flow chart of denoising by true and estimated sigma-map and DRUNet. σ<sub>av</sub> = 30  </i>
</p>


## BM3D denoising example ##
Conventionl denoisers that remove AWGN can also utilize sigma-maps to perform denoising, e.g. BM3D[5]. For denoising, we divide noisy image to sigma map and result image is called equalized image, which is believed to have AWGN distbution. Therefore, BM3D can easily remove equalized image noise and after de-equalization, denoised image is achieved. 

![BM3D_chain_pic](https://user-images.githubusercontent.com/31028574/133612352-89257c51-20a8-4aef-8950-06a577e43c77.PNG)
 <p align="center">
<i> Flow chart of denoising by sigma-map and BM3D  </i>
</p>

## Full size example of sigma map estimation ##

Noisy image (rgb)          |  Ground truth sigma map    |  Estimated sigma map by SDNet ε<sub>m</sub> = 0.0402
:-------------------------:|:-------------------------:|:-------------------------:
![im_noisy_17_rgb](https://user-images.githubusercontent.com/31028574/152063936-7ab8ff27-aea1-4aef-80b0-a9b02c332b99.png)  |  ![smap_grtruth](https://user-images.githubusercontent.com/31028574/152064068-38a73cd1-9b24-488e-9c31-e132cf0ae75b.png) | ![estimated_sigma_map](https://user-images.githubusercontent.com/31028574/152064633-b94a4bc4-d4c5-472b-a38d-1f934edef966.png)


Noisy image (gray scale)   |  Ground truth sigma map    |  Estimated sigma map by SDNet ε<sub>m</sub> = 0.0821
:-------------------------:|:-------------------------:|:-------------------------:
![im_noisy_7_grscale](https://user-images.githubusercontent.com/31028574/152064751-57db05a5-138b-4ddb-876d-a470ac9961c2.png) | ![smap_grtruth](https://user-images.githubusercontent.com/31028574/152064779-a26883b6-7a88-4b18-b6d0-e34d75b355d6.png) | ![estimated_sigma_map](https://user-images.githubusercontent.com/31028574/152064798-cfe064d2-820a-45be-9473-cc1fbcd57134.png)

## Sigma map estimation for real-life examples  ##
Results of SDNet on estimation of real-life images are illustrated in below. 

Noisy image here is a blue channel of mosaic Bayer CFA image (RAW image produced by Canon EOS 250D camera).

Since camera parameters (we have calibrated the camera) and shooting parameters (ISO) are known, we have the ground truth sigma map for image. Variance for Poisson noise is equal to ground truth pixel value, but ground truth pixel values are not available and we only have noisy pixel values. Therefore, ground truth sigma map is an approximate noisy ground truth sigma map (calculated based on noisy pixels).

Estimated sigma map is predicted by SDNet additionally trained on image patches distorted by Poisson noise and on image patches distorted by multiplicative Gaussian noises.  The pre-trained model is available on [pre-trained grayscale poisson](https://webpages.tuni.fi/imaging/sdnet/sdnet_gray_poisson.mat)


Noisy image                |  Ground truth sigma map    |  Estimated sigma map by SDNet
:-------------------------:|:-------------------------:|:-------------------------:
|![real1](https://user-images.githubusercontent.com/31028574/152148028-78feaf95-4fe2-4f73-80de-fbd06223da16.png)|![real1_sigma_true](https://user-images.githubusercontent.com/31028574/152148078-5809e9f4-eaf5-4b2f-bcc5-4e363e0c5a49.png)|![real1_sigma_est](https://user-images.githubusercontent.com/31028574/152148113-485fc8e0-81df-4fe4-b5fa-e39d74fa7f8f.png)
|![real2](https://user-images.githubusercontent.com/31028574/152148178-a0fddd3f-c517-442f-acf4-ea693a950214.png)|![real2_sigma_true](https://user-images.githubusercontent.com/31028574/152148201-ec6c4612-b053-487f-9479-c1eceef3806a.png)|![real2_sigma_est](https://user-images.githubusercontent.com/31028574/152148217-5a6a15f4-ba2c-405d-ba36-6e7dbf92f87d.png)

## Full size illustrations of noisy and denoised images  ##

Noisy image , PSNR = 24.9     |  Denoised image by  CBDNet , PSNR = 32.57 
:-------------------------:|:-------------------------:| 
![ff279](https://user-images.githubusercontent.com/31028574/152358062-09833848-7e13-4e46-9313-e4c7f4d39fb6.png) | ![denoisde_cbdnet_15_color](https://user-images.githubusercontent.com/31028574/152358593-c1689461-df73-4463-8210-591c8b900b5c.png)|
| **Denoised image by VDNet , PSNR = 34.79** |  **Denoised image by SDNet+DRUNet , PSNR = 34.97**
![denoisde_vdnet_15_color](https://user-images.githubusercontent.com/31028574/152358758-953adefa-18fd-45b3-a59c-c8c259fe62eb.png) |![sdnet_drunet](https://user-images.githubusercontent.com/31028574/152358800-3d836997-f0f3-4f18-896e-107991c314f7.png)

##  Our two noise-free image databases ##
Tampere17 image set of noise-free images is available  [here](https://webpages.tuni.fi/imaging/tampere17/)<br />
Tampere21 image set of noise-free images is available [here](https://webpages.tuni.fi/imaging/tampere21/)


##  References ##
[1]  V. V. Lukin, D. V. Fevralev, N. N. Ponomarenko, S. K. Abramov, O. B. Pogrebnyak, K. O. Egiazarian, and J. T. Astola, “Discrete cosine transform- based local adaptive ﬁltering of images corrupted by nonstationary noise,” Journal of Electronic Imaging, vol. 19, no. 2, p.023007, 2010.<br />
[2] A. A. Shulev, A. Gotchev, A. Foi, and I. R. Roussev, “Threshold selection in transform-domain denoising of speckle pattern fringes,” in Holography 2005: International Conference on Holography, Optical Recording, and Processing of Information, vol. 6252. International Society for Optics and Photonics, 2006, p. 625220.<br />
[3] S. G. Bahncmiri, M. Ponomarenko, and K. Egiazarian, “Deep convolutional autoencoder for estimation of nonstationary noise in images,” in 2019 8th European Workshop on Visual Information Processing (EUVIP). IEEE, 2019, pp. 238–243 <br />
[4] Yue, H. Yong, Q. Zhao, L. Zhang, and D. Meng, “Variational denoising network: Toward blind noise modeling and removal,” arXiv preprint arXiv:1908.11314, 2019.<br />
[5] K. Dabov, A. Foi, V. Katkovnik, and K. Egiazarian, “Image denoising by sparse 3-d transform-domain collaborative ﬁltering,” IEEE Transactions on image processing, vol. 16, no. 8, pp. 2080–2095, 2007 <br />
[6] K. Zhang, Y. Li, W. Zuo, L. Zhang, L. Van Gool, and R. Timofte, “Plug-and-play  image  restoration  with  deep  denoiser  prior,”arXiv  preprintarXiv:2008.13751, 2020.
