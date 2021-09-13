# SDNet

# Learning Based Noise Component Map Estimation for Image Denoising , link to the paper

 ##  Abstract 
 Problem  of  image  denoising  when  images  are corrupted  by  a  non-stationary  noise  is  considered  in  this  paper. Since  in  practice  no  a  priori  information  on  noise  is  available, often   noise   statistics   should   be   estimated   before   applying   adenoising   method.   In   this   paper   a   method   of   estimation   of map  of  local,  patch-wise,  standard  deviations  of  noise  (so-calledsigma-map) is proposed. The method based on deep convolutional neural network shows state-of-the-art accuracy of estimation both sigma-map  for  non-stationary  noise  and  variance  for  additive white  Gaussian  noise.  Extensive  experiments  on  image  denoising  using  estimated  sigma-maps  demonstrate  that  our  methodout performs  state-of-the-art  blind  image  denoising  methods  (by up to 6 dB in PSNR) as well as other methods based on sigma-map estimation (up to 0.5 dB), providing better usage flexibility. Comparison  with  an  ideal  case  when  denoising  is  applied  with the ground-truth sigma-map shows that a difference in PSNR for most  of  noise  levels  is  0.1-0.2  dB  and  does  not  exceeds  0.6  db.
 
 + **Structure scheme of proposed SDNet (SConv - stride convolution , TConv - transpose convolution)**
![pic1](https://user-images.githubusercontent.com/31028574/132021861-0cbd4ba0-31d4-46c9-9ede-79c67e496010.PNG)
        
  ### Network structure ###
  Run ``` sdnet_rgb_structure.m ```  and ``` sdnet_gray_structure.m ``` for observing structure of network in detail and layers. <i> AnalyzeNetwork </i> tool of MATLAB can be used for furthur analysis.
        
There are two models available one for estimating sigma-map of grayscale images and the other one for rgb color images. Here is the link to pre-trained SDNet models [pre-trained gary scale](https://webpages.tuni.fi/imaging/sdnet/sdnet_gray.mat) and [pre-trained rgb](https://webpages.tuni.fi/imaging/sdnet/sdnet_rgb.mat)

### Requirements ###
MATLAB 2021

### Tetsing ###
For estimating  sigma-map of a single noisy image run ``` Demo.m ``` <br />
You can find mat files of ground truth test images in <i>testset_rgb</i> and <i>testset_grayscale</i> folders <br />
Groud truth sigma maps can be found in <i>ground_true_sigma_map</i>. you can use ground truth sigma maps to create noisy images. See the example in  ``` Demo.m ```

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
SDNet also is used for estimating AWGN sigma value by calculating median of the sigm-map. we have provided relative error ε of AWGN sigma estimation and examples of this task in below. Results are reported both in non-clipped and clipped noise cases </i>

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



## BM3D denoising example ##
Conventionl denoisers that remove AWGN can also utilize sigma-maps to perform denoising, e.g. BM3D[5]. For denoising, we divide noisy image to sigma map and result image is called equalized image, which is believed to have AWGN distbution. Therefore, BM3D can easily remove equalized image noise and after de-equalization, denoised image is achieved. 

![BM3D_chain_pic](https://user-images.githubusercontent.com/31028574/132998898-b52e67c3-5fd5-44e6-9d3e-890df3556d94.PNG)

 <p align="center">
<i> Flow chart of denoising by sigma-map and BM3D  </i>
</p>
 
[1]  V. V. Lukin, D. V. Fevralev, N. N. Ponomarenko, S. K. Abramov, O. B. Pogrebnyak, K. O. Egiazarian, and J. T. Astola, “Discrete cosine transform- based local adaptive ﬁltering of images corrupted by nonstationary noise,” Journal of Electronic Imaging, vol. 19, no. 2, p.023007, 2010.<br />
[2] A. A. Shulev, A. Gotchev, A. Foi, and I. R. Roussev, “Threshold selection in transform-domain denoising of speckle pattern fringes,” in Holography 2005: International Conference on Holography, Optical Recording, and Processing of Information, vol. 6252. International Society for Optics and Photonics, 2006, p. 625220.<br />
[3] S. G. Bahncmiri, M. Ponomarenko, and K. Egiazarian, “Deep convolutional autoencoder for estimation of nonstationary noise in images,” in 2019 8th European Workshop on Visual Information Processing (EUVIP). IEEE, 2019, pp. 238–243 <br />
[4] Yue, H. Yong, Q. Zhao, L. Zhang, and D. Meng, “Variational denoising network: Toward blind noise modeling and removal,” arXiv preprint arXiv:1908.11314, 2019.<br />
[5] K. Dabov, A. Foi, V. Katkovnik, and K. Egiazarian, “Image denoising by sparse 3-d transform-domain collaborative ﬁltering,” IEEE Transactions on image processing, vol. 16, no. 8, pp. 2080–2095, 2007
