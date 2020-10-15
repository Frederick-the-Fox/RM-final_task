#include <iostream>
#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include <opencv2/opencv.hpp>
#include <thread>
#include <stdio.h>

using namespace std;
using namespace cv;
using namespace boost::asio;

void Send(string content,string name);

int main(int argc, char** argv)
{       
    //输入串口名称
    cout << "please input the slave's name:" << endl;
    string name;
    cin >> name;

    //加载视频
    VideoCapture capture(argv[1]);
    //保护：判是否加载成功
    if(capture.isOpened())
    {
        cout << "Read video Succeed" << endl;
    }
    else
    {
        cout << "Read video Failed" << endl;
        return 0;
    }
    
    //将视频细分为frame，便于进行图像处理
    Mat frame;
    //加强：可以看一下视频一共有多少frame
    int frame_num = capture.get(CAP_PROP_FRAME_COUNT);
    cout << "totle frame number is: " << frame_num << endl;    
     
    //将图像颜色转化为hsv格式做准备
    Mat imgHsv, Dst;
    Scalar L = Scalar(0,130,130);//阈值最低
    Scalar H = Scalar(10,255,255);//阈值最高

    //轮廓
    vector<vector<Point> > contours;
    vector<Vec4i> hierarchy;

    //开窗口
    namedWindow("Video test");
    //namedWindow("dstVideo");

    for (int i = 0; i < frame_num - 1; ++i)
    {
        //读frame
        capture >> frame;

        //将图像转化为hsv格式
        cvtColor(frame, imgHsv, CV_BGR2HSV);
        inRange(imgHsv, L, H, Dst);//卡阈值

        //遍历轮廓，用一个小算法找到左上角以及右下角的位置坐标，同时获得宽与高
        findContours(Dst, contours, hierarchy, RETR_TREE, CHAIN_APPROX_SIMPLE);
        int imgx = contours[0][0].x;
        int imgy = contours[0][0].y;
        int imgx2 = contours[0][0].x;
        int imgy2 = contours[0][0].y;
        for (int i = 0; i < contours.size(); i++)
        {
            for (int j = 0; j < contours[i].size(); j++)
            {
                if (contours[i][j].x + contours[i][j].y < imgx + imgy)
                {
                    imgx = contours[i][j].x;
                    imgy = contours[i][j].y;
                }
                if (contours[i][j].x + contours[i][j].y > imgx2 + imgy2)
                {
                    imgx2 = contours[i][j].x;
                    imgy2 = contours[i][j].y;
                }
            }
        }
        int w = imgx2 - imgx;
        int h = imgy2 - imgy;



        //画边框
        Rect rect(imgx, imgy, w, h);
        Point p;
        p.x = imgx + w/2;
        p.y = imgy + h/2;
        circle(frame, p, 2, Scalar(0, 255, 0), 0);
        rectangle(frame, rect, Scalar(0, 255, 0),5,LINE_8, 0);
        string ptext = "x is:" + to_string(p.x) + "   y is:" + to_string(p.y);

        //向串口传递值
        thread t1(Send,ptext, name);

        //图像展示
        //imshow("dstVideo", Dst);
        imshow("Video test", frame);
        if (waitKey(30) == 'q')
        {
            break;
        } 

        t1.join();
    }

    destroyWindow("Video test");
    capture.release();
    return 0;
}



void Send(string content,string name)//内容、串口名称
{
    io_service iosev;
    serial_port sp(iosev,name);
   
    //设置参数
    sp.set_option(serial_port::baud_rate(115200));
    sp.set_option(serial_port::flow_control(serial_port::flow_control::none));
    sp.set_option(serial_port::parity(serial_port::parity::none));
    sp.set_option(serial_port::stop_bits(serial_port::stop_bits::one));
    sp.set_option(serial_port::character_size(8));

    //向串口传值   
    write(sp, buffer(content, 50));

    //向串口读数据
    cout << content << endl;
    // char buf[30];
    // read(sp, buffer(buf));
    // printf("%s\n", buf);
    // iosev.run();
}
