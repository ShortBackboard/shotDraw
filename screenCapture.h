// 屏幕捕获的接口，用于提供所有屏幕捕获功能，向上返回屏幕捕获信息

#ifndef SCREENCAPTURE_H
#define SCREENCAPTURE_H
#include <QObject>
#include "selectImageProvider.h"

// 前置声明
class QScreen;
class QPixmap;
class QClipboard;

class ScreenCapture: public QObject
{
    Q_OBJECT

public:
    ScreenCapture(QWidget *parent = 0);

    // Q_INVOKABLE注册C++函数到QML使用
    // 初始设定图片截取后，暂不返回任何值
    Q_INVOKABLE void shotFullScreen();  // 全屏截取
    Q_INVOKABLE void shotFullScreen(int x, int y, int w, int h);  // 矩形区域截取
     Q_INVOKABLE void shotActiveWin();   //活动窗口截图
     Q_INVOKABLE void getActiveWinId();  //获取并保存系统当前活动窗口ID，用于活动窗口截图


public:
    SelectImageProvider *provider;  // 图片提供者

private:
    QScreen *m_screen;  // 当前屏幕
    QClipboard *m_clipBoard;    // 剪贴板
    QPixmap *m_currentPic;  // 保存当前图片，为支持‘保存’功能
    WId winId{0};   // 保存当前活动窗口ID
};
#endif // SCREENCAPTURE_H
