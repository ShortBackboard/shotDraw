// 矩形区域截图
// 一个不显示的组件用于矩形区域截图

import QtQuick
import QtQuick.Controls
import "Functions.js" as Func

Window {
    property alias winSelected: selectedWin
    property alias sImg: selectedImg

    id: selectedWin

    visible: false


    // 显示截图的全屏截图图片，用于后面选择矩形区域截图
    Image {
        id: selectedImg
        anchors.fill: parent
        source: ""
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        drag.target: dragRect

        property int startX: 0
        property int startY: 0
        property int endX: 0
        property int endY: 0

        onPressed: (mouse) => {
            startX = mouse.x
            startY = mouse.y
            dragRect.visible = true
            dragRect.focus = true
        }


        // 拖动选择的矩形截图区域
        onPositionChanged: (mouse) => {
            endX = mouse.x
            endY = mouse.y
            dragRect.width = Math.abs(endX-startX)
            dragRect.height = Math.abs(endY-startY)

            // 确定x,y的位置
            dragRect.x = startX < endX ? startX : endX
            dragRect.y = startY < endY ? startY : endY
        }

        Rectangle{
            id: dragRect
            color: "transparent"
            border.color: "royalblue"
            border.width: 1
            visible: false

            TapHandler{
                // 双击确认矩形区域截图
                onDoubleTapped: {
                    // 调用C++注册的函数
                    Func.cutArea(dragRect.x, dragRect.y, dragRect.width, dragRect.height);
                    selectedWin.close();
                    root.visible = true;
                }
            }
        }
    }

}
