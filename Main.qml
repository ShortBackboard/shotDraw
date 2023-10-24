import QtQuick
import QtQuick.Controls
import "Functions.js" as Func // 导入JS文件

ApplicationWindow {
    id: root

    // 设置固定大小
    minimumWidth: 1280
    maximumWidth: 1280
    minimumHeight: 768
    maximumHeight: 768


    visible: true

    // 图片显示区域别名，用于其他文件引用
    property alias priImg: image

    // 矩形区域截图
    property alias selectWin: select

    // 启动软件时自动截取当前全屏
    Component.onCompleted: {
        // 调用C++注册的方法
        shotFullScreen();
        Func.setPriImgSource();
    }



    // 设置标题
    title: qsTr("ShotDraw")

    // 不显示的区域，用于矩形区域截图
    SelectWindow {
        id: select
    }

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

        // 矩形区域截图信号的定义
        onSelectArea: {
            // 调用C++中的全屏截图
            // 显示此窗口
            select.winSelected.showFullScreen()
        }
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
        border.color: "black"
        color: "#f0f0f0"

        Image {
            id: image
            anchors.fill: parent
            source: ""
        }
    }


}



























