// 头部工具栏

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

// 1280 * 768

Rectangle {
    width: parent.width
    height: 35
    border.color: "black"
    color: "#f0f0f0"

    RowLayout {
        id: headerTools

        // 组件间距
        spacing: 37.5

        ToolButton {
            id : save
            text: "         保存        "
            highlighted: save.hovered ? true : false

        }

        ToolButton {
            id : saveAs
            text: "        另存为        "
            highlighted: saveAs.hovered ? true : false
        }

        ToolButton {
            id : open
            text: "        打开        "
            highlighted: open.hovered ? true : false
            onClicked: () => {
                           dialogs.openFileDialog()
                       }
        }


        ToolButton {
            id : shareTool
            text: "        分享        "
            highlighted: shareTool.hovered ? true : false


            // 点击显示分享菜单栏
            onClicked: menuShare.popup(0, 30)

            Menu {
                id: menuShare
                Menu {
                    title: qsTr("分享")
                    MenuItem {
                        id: qq
                        text: qsTr("分享至QQ")
                        icon.source: "qrc:/icons/qq.png"
                        onTriggered: {
                            share.shareToQQ()
                        }
                    }

                    MenuItem{
                        id: wexin
                        text: qsTr("分享至微信")
                        icon.source: "qrc:/icons/wexin.png"
                        onTriggered: {
                            share.shareToWeXin()
                        }
                    }
                }
            }

        }

        ToolButton {
            id : screen
            text: "        录屏        "
            highlighted: screen.hovered ? true : false
        }

        ToolButton {
            id : about
            text: "        关于        "
            highlighted: about.hovered ? true : false
            onClicked: () => {
                           dialogs.aboutInfoDialog()
                       }
        }

        ToolButton {
            id : help
            text: "        帮助        "
            highlighted: help.hovered ? true : false
            onClicked: () => {
                           dialogs.helpDialog()
                       }
        }

    }
}

















