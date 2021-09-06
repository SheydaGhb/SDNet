clear all

l = [imageInputLayer([128 128 1], 'Name','Input_actual_input_1', 'Normalization', 'none', 'NormalizationDimension', 'auto', 'DataAugmentation', 'none')];
l = [l convolution2dLayer([3 3],64,'NumChannels',3,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_0')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_1')];
l = [l reluLayer('Name','Relu_2')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_3')];
l = [l additionLayer(2,'Name','Add_4')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_5')];
l = [l reluLayer('Name','Relu_6')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_7')];
l = [l additionLayer(2,'Name','Add_8')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_9')];
l = [l reluLayer('Name','Relu_10')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_11')];
l = [l additionLayer(2,'Name','Add_12')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_13')];
l = [l reluLayer('Name','Relu_14')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_15')];
l = [l additionLayer(2,'Name','Add_16')];
l = [l convolution2dLayer([2 2],128,'NumChannels',64,'Padding', [0 0 0 0], 'Stride', [2 2], 'DilationFactor', [1 1], 'Name','Conv_17')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_18')];
l = [l reluLayer('Name','Relu_19')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_20')];
l = [l additionLayer(2,'Name','Add_21')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_22')];
l = [l reluLayer('Name','Relu_23')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_24')];
l = [l additionLayer(2,'Name','Add_25')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_26')];
l = [l reluLayer('Name','Relu_27')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_28')];
l = [l additionLayer(2,'Name','Add_29')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_30')];
l = [l reluLayer('Name','Relu_31')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_32')];
l = [l additionLayer(2,'Name','Add_33')];
l = [l convolution2dLayer([2 2],256,'NumChannels',128,'Padding', [0 0 0 0], 'Stride', [2 2], 'DilationFactor', [1 1], 'Name','Conv_34')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_35')];
l = [l reluLayer('Name','Relu_36')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_37')];
l = [l additionLayer(2,'Name','Add_38')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_39')];
l = [l reluLayer('Name','Relu_40')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_41')];
l = [l additionLayer(2,'Name','Add_42')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_43')];
l = [l reluLayer('Name','Relu_44')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_45')];
l = [l additionLayer(2,'Name','Add_46')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_47')];
l = [l reluLayer('Name','Relu_48')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_49')];
l = [l additionLayer(2,'Name','Add_50')];
l = [l convolution2dLayer([2 2],512,'NumChannels',256,'Padding', [0 0 0 0], 'Stride', [2 2], 'DilationFactor', [1 1], 'Name','Conv_51')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_52')];
l = [l reluLayer('Name','Relu_53')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_54')];
l = [l additionLayer(2,'Name','Add_55')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_56')];
l = [l reluLayer('Name','Relu_57')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_58')];
l = [l additionLayer(2,'Name','Add_59')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_60')];
l = [l reluLayer('Name','Relu_61')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_62')];
l = [l additionLayer(2,'Name','Add_63')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_64')];
l = [l reluLayer('Name','Relu_65')];
l = [l convolution2dLayer([3 3],512,'NumChannels',512,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_66')];
l = [l additionLayer(2,'Name','Add_67')];
l = [l additionLayer(2,'Name','Add_68')];
l = [l transposedConv2dLayer([2 2],256,'NumChannels',512,'Stride', [2 2], 'Cropping',[0 0 0 0],'Name','ConvTranspose_69')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_70')];
l = [l reluLayer('Name','Relu_71')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_72')];
l = [l additionLayer(2,'Name','Add_73')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_74')];
l = [l reluLayer('Name','Relu_75')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_76')];
l = [l additionLayer(2,'Name','Add_77')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_78')];
l = [l reluLayer('Name','Relu_79')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_80')];
l = [l additionLayer(2,'Name','Add_81')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_82')];
l = [l reluLayer('Name','Relu_83')];
l = [l convolution2dLayer([3 3],256,'NumChannels',256,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_84')];
l = [l additionLayer(2,'Name','Add_85')];
l = [l additionLayer(2,'Name','Add_86')];
l = [l transposedConv2dLayer([2 2],128,'NumChannels',256,'Stride', [2 2], 'Cropping',[0 0 0 0],'Name','ConvTranspose_87')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_88')];
l = [l reluLayer('Name','Relu_89')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_90')];
l = [l additionLayer(2,'Name','Add_91')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_92')];
l = [l reluLayer('Name','Relu_93')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_94')];
l = [l additionLayer(2,'Name','Add_95')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_96')];
l = [l reluLayer('Name','Relu_97')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_98')];
l = [l additionLayer(2,'Name','Add_99')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_100')];
l = [l reluLayer('Name','Relu_101')];
l = [l convolution2dLayer([3 3],128,'NumChannels',128,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_102')];
l = [l additionLayer(2,'Name','Add_103')];
l = [l additionLayer(2,'Name','Add_104')];
l = [l transposedConv2dLayer([2 2],64,'NumChannels',128,'Stride', [2 2], 'Cropping',[0 0 0 0],'Name','ConvTranspose_105')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_106')];
l = [l reluLayer('Name','Relu_107')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_108')];
l = [l additionLayer(2,'Name','Add_109')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_110')];
l = [l reluLayer('Name','Relu_111')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_112')];
l = [l additionLayer(2,'Name','Add_113')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_114')];
l = [l reluLayer('Name','Relu_115')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_116')];
l = [l additionLayer(2,'Name','Add_117')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_118')];
l = [l reluLayer('Name','Relu_119')];
l = [l convolution2dLayer([3 3],64,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_120')];
l = [l additionLayer(2,'Name','Add_121')];
l = [l additionLayer(2,'Name','Add_122')];
l = [l convolution2dLayer([3 3],1,'NumChannels',64,'Padding', [1 1 1 1], 'Stride', [1 1], 'DilationFactor', [1 1], 'Name','Conv_123')];

lgraph = layerGraph(l);

lgraph = connectLayers(lgraph,'Conv_0','Add_4/in2');
lgraph = connectLayers(lgraph,'Conv_0','Add_122/in2');
lgraph = connectLayers(lgraph,'Add_4','Add_8/in2');
lgraph = connectLayers(lgraph,'Add_8','Add_12/in2');
lgraph = connectLayers(lgraph,'Add_12','Add_16/in2');
lgraph = connectLayers(lgraph,'Conv_17','Add_21/in2');
lgraph = connectLayers(lgraph,'Conv_17','Add_104/in2');
lgraph = connectLayers(lgraph,'Add_21','Add_25/in2');
lgraph = connectLayers(lgraph,'Add_25','Add_29/in2');
lgraph = connectLayers(lgraph,'Add_29','Add_33/in2');
lgraph = connectLayers(lgraph,'Conv_34','Add_38/in2');
lgraph = connectLayers(lgraph,'Conv_34','Add_86/in2');
lgraph = connectLayers(lgraph,'Add_38','Add_42/in2');
lgraph = connectLayers(lgraph,'Add_42','Add_46/in2');
lgraph = connectLayers(lgraph,'Add_46','Add_50/in2');
lgraph = connectLayers(lgraph,'Conv_51','Add_55/in2');
lgraph = connectLayers(lgraph,'Conv_51','Add_68/in2');
lgraph = connectLayers(lgraph,'Add_55','Add_59/in2');
lgraph = connectLayers(lgraph,'Add_59','Add_63/in2');
lgraph = connectLayers(lgraph,'Add_63','Add_67/in2');
lgraph = connectLayers(lgraph,'ConvTranspose_69','Add_73/in2');
lgraph = connectLayers(lgraph,'Add_73','Add_77/in2');
lgraph = connectLayers(lgraph,'Add_77','Add_81/in2');
lgraph = connectLayers(lgraph,'Add_81','Add_85/in2');
lgraph = connectLayers(lgraph,'ConvTranspose_87','Add_91/in2');
lgraph = connectLayers(lgraph,'Add_91','Add_95/in2');
lgraph = connectLayers(lgraph,'Add_95','Add_99/in2');
lgraph = connectLayers(lgraph,'Add_99','Add_103/in2');
lgraph = connectLayers(lgraph,'ConvTranspose_105','Add_109/in2');
lgraph = connectLayers(lgraph,'Add_109','Add_113/in2');
lgraph = connectLayers(lgraph,'Add_113','Add_117/in2');
lgraph = connectLayers(lgraph,'Add_117','Add_121/in2');

sdnet=dlnetwork(lgraph);

NumIt = 100000;  % number of iterations
initialLearnRate = 0.00001;
decay = 0.00001;

loss_save = zeros(1,NumIt);
loss_ver = [];
averageGrad = []; averageSqGrad = [];
iteration = 0;
nbest=0;

save('sdnet_rgb.mat','sdnet','averageGrad','averageSqGrad','iteration','loss_save','initialLearnRate','decay','loss_ver','nbest');

