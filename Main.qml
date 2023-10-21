import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: root

    // 设置固定大小
    minimumWidth: 1280
    maximumWidth: 1280
    minimumHeight: 768
    maximumHeight: 768

    visible: true



    // 设置标题
    title: qsTr("ShotDraw")

    // 头部工具栏
    Header {
        id: header
    }

}
