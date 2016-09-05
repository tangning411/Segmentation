#include <iostream>
#include <fstream>
#include <iomanip>
using namespace std;
#define imageNumber 141  //141代表数据集中图像张数
int main(int argc, char* argv[])
{
    double data[imageNumber][3];
    ifstream infile(argv[1],ios::in);
    if(!infile)
    {
        cout<<"fail to load file"<<endl;
        return 0;
    }
    while(!infile.eof()) //判断文件是否结束，结束时返回值非零
    {
        for(int i=0; i<imageNumber; i++)
        {
            for(int j=0; j<3; j++)
            {
              infile >>data[i][j];
                    
            }
        }
    }
    infile.close();
    //计算precision均值
    double sumPrecision;
    double sumRecall;
    double sumF;
    sumPrecision=0;
    sumRecall=0;
    sumF=0;
    for(int i=0; i<imageNumber; i++)
    {
        sumPrecision+=data[i][0];
    }
    //计算Recall均值
    for(int i=0; i<imageNumber; i++)
    {
        sumRecall+=data[i][1];
    }
    //计算F-Measure均值
    for(int i=0; i<imageNumber; i++)
    {
        sumF+=data[i][2];
    }
    double meanPrecision;
    double meanRecall;
    double meanF;
    meanPrecision=sumPrecision/imageNumber;
    meanRecall=sumRecall/imageNumber;
    meanF=sumF/imageNumber;
    ofstream outfile(argv[2],ios::out|ios::app); //ios::app代表输出的所有数据添加到文件末尾
    if (!outfile)
    {
        cout << "fail to load file" << endl;
        return 0;
    }
    outfile<<setiosflags(ios::fixed)<<setprecision(4)<<meanPrecision<<" "<<setiosflags(ios::fixed)<<setprecision(4)<<meanRecall<<" "<<setiosflags(ios::fixed)<<setprecision(4)<<" "<<meanF<<endl;
    outfile.close();

    return 0;
}