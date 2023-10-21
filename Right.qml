// 右侧截屏选项工具栏

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "Functions.js" as Func

Rectangle {

    x: 976
    y: 40
    width: 300
    height: parent.height - 95
    border.color: "black"
    color: "#f0f0f0"

    // 定时器，用于延时截屏
    Timer {
        id: delayTimer
        interval: 250+spinBox.value*1000

        onTriggered: {
            // 到时触发事件
            shotFullScreen();
            Func.setPriImgSource();
            root.visible = true;
        }
    }

    ColumnLayout {
        x: 0
        y: 0

        width: parent.width
        height: 400

        RowLayout{
            id:row1
            Text {
                font.pointSize: 18
                text: qsTr("   进行截图")
            }
        }

        ColumnLayout{
            id: row2
            Layout.leftMargin: (parent.width - row2.width) / 2
            spacing: 10

            Button{
                id: rectangularRegionButton
                Layout.preferredWidth: 250
                Layout.preferredHeight: 45
                text: "矩形区域"
                onClicked: {

                }

            }

            Button{
                id: fullScreenButton
                Layout.preferredWidth: 250
                Layout.preferredHeight: 45
                text: "全屏截图"
                onClicked: Func.captureScreen();
            }

            Button{
                id: activeWindowButton
                Layout.preferredWidth: 250
                Layout.preferredHeight: 45
                text: "活动窗口"
                onClicked: {

                }
            }

        }

        RowLayout{
            id: row3

            Text {
                font.pointSize: 16
                text: qsTr(" 延迟")
            }

            SpinBox{
                id:spinBox
                editable: true
                value: 0
                stepSize: 1
            }
        }


    }
}





















