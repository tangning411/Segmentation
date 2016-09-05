#include "opencv2/core.hpp"
#include"opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include<iostream>
using namespace cv;
using namespace std;

int main(int argc, char *argv[])
{
    Mat inputImage, outputImage;
    inputImage = imread(argv[2]);
    outputImage = inputImage.clone();
    if(!inputImage.data)
    {
        cout<<"fail to load image."<<endl;
    }
    int rowNumber=outputImage.rows;    //行数
    int colNumber =outputImage.cols*outputImage.channels();   //列数X通道数=每一行元素的个数
    //双重循环，遍历所有的像素值
    for(int i=0;i<rowNumber;i++)  //行循环
    {
        uchar*data=outputImage.ptr<uchar>(i);  //获取第i行的首地址
        for(int j=0;j<colNumber;j++)   //列循环
        {
            data[j]=255 - data[j];
        }
    }
    imwrite(argv[4],outputImage);
    
    return 0;

}
