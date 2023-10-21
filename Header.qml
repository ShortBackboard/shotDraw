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

        }

        ToolButton {
            id : saveAs
            text: "        另存为        "
        }

        ToolButton {
            id : open
            text: "        打开        "
        }


        ToolButton {
            id : share
            text: "        分享        "
        }

        ToolButton {
            id : screen
            text: "        录屏        "
        }

        ToolButton {
            id : about
            text: "        关于        "
        }

        ToolButton {
            id : help
            text: "        帮助        "
        }

    }
}

















