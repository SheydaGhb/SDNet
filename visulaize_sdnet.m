% Download the sdnet_rgb.mat with pretrained SDNet from https://webpages.tuni.fi/imaging/sdnet/sdnet_rgb.mat
load sdnet_rgb.mat;
analyzeNetwork(layerGraph(sdnet));