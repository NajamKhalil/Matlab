%% Author: Najam Khalil
% Computer Engineer
% Email: najamkhalil123@gmail.com

a=imread('tire.tif');
    [r,c]=size(a);
    n=r*c;
    graylevels=zeros(256,1);
    for i=1:r
        for j=1:c
            value=a(i,j);
            graylevels(value+1)=graylevels(value+1)+1;
        end
    end
    pdf=zeros(256,1);
    use=zeros(256,1);
    result=zeros(256,1);
    sum=0;
    for k=1:size(pdf)
        
        pdf(k)=graylevels(k)/n;
       sum=sum+pdf(k);
       use(k)=sum;
       result(k)=round(use(k)*256);
      
    end
    subplot 221
    imshow(a);
    title('Original Image');
    subplot 222
    imhist(a)
    title('Built In');
    subplot 223
    stem(graylevels)
    title('My Histogram')
    subplot 224
    stem(pdf)
    title('PDF')