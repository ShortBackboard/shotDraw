// 注册到Qml的分享功能

#ifndef SHARE_H
#define SHARE_H
#include <QWidget>

class Share : public QWidget{
    Q_OBJECT
public:
    Share(QWidget *parent = nullptr);
    // 对于share这个版块的功能全部使用Q_INVOKABLE声明，Qml端直接在按钮需要对这个功能相应的地方调用下列函数即可
    Q_INVOKABLE void shareToQQ();
    Q_INVOKABLE void shareToWeXin();

};

#endif // SHARE_H
