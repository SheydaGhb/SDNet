function r = im_proc(image, net)

  r = gather(extractdata(forward(net,dlarray(gpuArray(single(image)),'SSCB'))));

end
