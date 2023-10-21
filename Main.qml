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
        id: headerTools
    }

    // 左侧编辑图片工具栏
    Left {
        id: leftTools
    }

    // 右侧截屏选项工具栏
    Right {
        id: rightTools
    }

    // 底部工具栏
    Bottom {
        id: bottomTools
    }

    // 图片显示区域
    Rectangle {
        x: 59
        y: 40
        width: 910
        height: parent.height - 95
        color: "grey"

        Image {
            id: image
            //source: "file"
        }
    }

}



























