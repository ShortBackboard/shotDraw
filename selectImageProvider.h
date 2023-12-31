// 继承QQuickImageProvider为qml提供图片显示
#ifndef SELECTIMAGEPROVIDER_H
#define SELECTIMAGEPROVIDER_H

#include <QQuickImageProvider>
#include <QImage>

//图片资源提供者
class SelectImageProvider : public QQuickImageProvider
{
public:
    SelectImageProvider()
        : QQuickImageProvider(QQuickImageProvider::Image)
    {}

    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override
    {
        QImage image = pixmap.toImage();
        *size = image.size();
        return image;
    }

public:
    QPixmap pixmap;
};


#endif // SELECTIMAGEPROVIDER_H
