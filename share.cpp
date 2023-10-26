#include "share.h"
#include <QDesktopServices>
#include <QUrl>
#include <cstdlib>
#include <QClipboard>
#include <QApplication>

Share::Share(QWidget *parent):QWidget(parent){

}

void Share::shareToQQ(){
    //启动系统中的qq
    //    system("qq");

    // 调用桌面工具去访问这个网址
    QDesktopServices::openUrl(QUrl("https://im.qq.com"));
}

void Share::shareToWeXin()
{
    // 调用桌面工具去访问这个网址
    QDesktopServices::openUrl(QUrl("https://wx.qq.com"));
}
