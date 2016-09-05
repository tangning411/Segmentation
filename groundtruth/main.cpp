#include "opencv2/core.hpp"
#include"opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include<iostream>
using namespace cv;
using namespace std;
//生成groundtruth
int main(int argc, char *argv[])
{
    Mat inputImage, outputImage;
    inputImage = imread(argv[2],1);
    outputImage = inputImage.clone();
    if(!inputImage.data)
    {
        cout<<"fail to load image."<<endl;
        return 0;
    }
    int rowNumber = inputImage.rows;
    int colNumber = inputImage.cols;
    
    for(int i=0; i<rowNumber; i++)
    {
        for(int j=0; j<colNumber; j++)
        {
            if((inputImage.at<Vec3b>(i,j)[0]==0 )&& (inputImage.at<Vec3b>(i,j)[1]==0 )&& (inputImage.at<Vec3b>(i,j)[2]=255))  //蓝色通道，绿色通道和红色通道
            {
                outputImage.at<Vec3b>(i,j)[0]=255;
                outputImage.at<Vec3b>(i,j)[1]=255;
                outputImage.at<Vec3b>(i,j)[2]=255;  //目标置为白色
            }
            else
            {
                outputImage.at<Vec3b>(i,j)[0]=0;
                outputImage.at<Vec3b>(i,j)[1]=0;
                outputImage.at<Vec3b>(i,j)[2]=0;  //背景置为黑色

            }
            
        }
    }
    imwrite(argv[4],outputImage);
    // 之前这里有“waitKey(0);”导致批处理出现死循环
    return 0;
    
}