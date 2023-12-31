#include <QGuiApplication>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "screenCapture.h"
#include "share.h"

int main(int argc, char *argv[])
{
    // QWidget 是建立在 QApplication 上的。
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // 注册截屏对象方法
    ScreenCapture sc;
    engine.rootContext()->setContextObject(&sc);

    // Provider名字与Js文件中一致：screenshot
    // 截屏的图片保存在sc对象的成员provider->pixmap中，用于传递到Qml
    engine.addImageProvider("screenshot", sc.provider);

    Share* share = new Share;
    engine.rootContext()->setContextProperty("share", share);

    const QUrl url(u"qrc:/shotDraw/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
