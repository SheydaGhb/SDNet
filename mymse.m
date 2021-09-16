function aaa = mymse(a,b)
  a=double(a(:));
  b=double(b(:));
  d=abs(a-b).^2;
  aaa=mean(d);
end
