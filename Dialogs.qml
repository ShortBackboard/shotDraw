// 对话框

import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs

Item{
    property alias aboutDialog: about
    property alias fileOpenDialog: fileOpen
    property alias fileSaveAsDialog: fileSaveAs

    function aboutInfoDialog() { about.open(); }
    function openFileDialog() { fileOpen.open(); }
    function saveAsFileDialog() { fileSaveAs.open(); }
    function helpDialog() { help.open(); }

    // "关于"信息对话框
    MessageDialog {
        id: about
        buttons: MessageDialog.Ok

        title: qsTr("关于")
        text:qsTr("本软件为绘截图，由李成杨开发。\n\n")
    }

    // 打开本地图片
    FileDialog {
        id: fileOpen
        title: qsTr("打开图片")
        nameFilters: [ "Image files (*.png *.jpeg *.jpg)" ]//filter
        fileMode: FileDialog.OpenFile
    }

    // 另存为
    FileDialog {
        id: fileSaveAs
        title: "另存为"
        nameFilters: [ "Image files (*.png *.jpeg *.jpg)"]
        fileMode: FileDialog.SaveFile
        defaultSuffix: ".png"
    }

    // "帮助"信息对话框
    MessageDialog {
        id: help
        buttons: MessageDialog.Ok

        title: qsTr("帮助")
        text:qsTr("请联系lichengyang1024@126.com \n\n\n")
    }
}
