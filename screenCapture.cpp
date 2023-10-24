#include "screenCapture.h"

#include <QGuiApplication>
#include <QScreen>
#include <QPixmap>
#include <QClipboard>
#include <QRectF>
#include <QPen>
#include <QBrush>
#include <QPainterPath>
#include <QDebug>

ScreenCapture::ScreenCapture(QWidget *parent)
    :provider(new SelectImageProvider)
{}

// 全屏截图
void ScreenCapture::shotFullScreen()
{
    m_screen = QGuiApplication::primaryScreen(); // 获取屏幕
    QRect rect = m_screen->geometry();  // 获取屏幕尺寸
    QPixmap screenshot = m_screen->grabWindow(0, 0, 0, rect.width(), rect.height());
    m_clipBoard = QGuiApplication::clipboard();    // 调用系统剪贴板
    m_clipBoard->setPixmap(screenshot);  // 保存到剪贴板

    provider->pixmap = screenshot;  // 图片提供者
    m_currentPic = &screenshot;     // 保存当前图片，为支持‘保存’功能
}


// 矩形区域截图
void ScreenCapture::shotFullScreen(int x, int y, int w, int h)
{
    m_screen = QGuiApplication::primaryScreen();
    QPixmap screenshot = m_screen->grabWindow(0, x, y, w, h);
    m_clipBoard = QGuiApplication::clipboard();    //调用系统剪贴板
    m_clipBoard->setPixmap(screenshot);  //保存到剪贴板
    provider->pixmap = screenshot;  //设置图片提供者资源
    m_currentPic = &screenshot;     //保存当前图片，为支持‘保存’功能
}
