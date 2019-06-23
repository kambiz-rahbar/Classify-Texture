function [h] = Gdir_hist(img)

if size(img,3)>1
     img= rgb2gray(img);
end

[Gmag, Gdir] = imgradient(img,'sobel');

%figure(1)
%imshowpair(Gmag, Gdir, 'montage');
%title('Gradient Magnitude, Gmag (left), and Gradient Direction, Gdir (right), using Prewitt method')

T = mean(Gmag(:));
theta = round((Gmag>T).*Gdir);

binnum = 9;
h = hist(theta(:),binnum);
h = h/sum(h);

%figure(2);
%imshow(theta);

%figure(3);
%bar(h)
