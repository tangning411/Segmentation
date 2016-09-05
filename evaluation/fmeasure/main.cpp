#include "opencv2/core.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/highgui.hpp"
#include<iostream>
#include <fstream>
#include <iomanip>
using namespace cv;
using namespace std;


int main(int argc, char* argv[])
{
    Mat groundtruthImage,segmentationImage;
    groundtruthImage = imread(argv[1],0);
    segmentationImage = imread(argv[2],0);
    if(!(groundtruthImage.data && segmentationImage.data))
    {
        cout<<"fail to load image."<<endl;
        return 0;
    }
    
    double truePositives, falsePositives, trueNegatives, falseNegatives;
    truePositives = 0;
    falsePositives = 0;
    trueNegatives = 0;
    falseNegatives = 0;
    int rowNumber, colNumber;
    rowNumber = segmentationImage.rows;
    colNumber = segmentationImage.cols;
    
    for(int i =0; i< rowNumber; i++)
    {
        for(int j=0; j<colNumber; j++)
        {
            if(groundtruthImage.at<uchar>(i,j)==segmentationImage.at<uchar>(i,j))
            {
                if(groundtruthImage.at<uchar>(i,j)== 255)
                    truePositives += 1;
                else
                    trueNegatives += 1;
            }
            else
            {
                if(groundtruthImage.at<uchar>(i,j)== 0)
                    falsePositives += 1;
                else
                    falseNegatives += 1;
            }
        }
    }
    //cout<<"truePositives: "<<truePositives<<endl;
    //cout<<"trueNegatives: "<<trueNegatives<<endl;
    //cout<<"falsePositives: "<<falsePositives<<endl;
    //cout<<"falseNegatives: "<<falseNegatives<<endl;
    
    //打开文件
    
    //方式1：fstream outfile;
    //outfile.open("filename");
    ofstream outfile(argv[3],ios::out|ios::app); //ios::app代表输出的所有数据添加到文件末尾
    if (!outfile)
    {
        cout << "fail to load file" << endl;
        return 0;
    }
    
    double precision, recall;
    precision = truePositives/(truePositives+falsePositives);
    recall = truePositives/(truePositives+falseNegatives);
    //cout<<"Precision: "<<precision<<endl;
    //cout<<"Recall: "<<recall<<endl;
    
    
    
    double F;
    if(precision==0&&recall==0)
        F=0;
    else
        F = 2*precision*recall/(precision+recall);
    //cout<<"F-Measure: "<<F<<endl;
    
    outfile<<setiosflags(ios::fixed)<<setprecision(4)<<precision<<" "<<setiosflags(ios::fixed)<<setprecision(4)<<recall<<" "<<setiosflags(ios::fixed)<<setprecision(4)<<F<<endl; //保留四位小数
    outfile.close();
    
    //double Fbeta;
    //Fbeta = (1+0.3)*precision*recall/(0.3*precision+recall);
    //cout<<"Fbeta: "<<Fbeta<<endl;
    
    return 0;
}