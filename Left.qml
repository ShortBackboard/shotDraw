// 左侧编辑图片工具栏

import QtQuick
import QtQuick.Controls

Rectangle {
    x: 3
    y: 40
    width: 50
    height: parent.height - 40


    border.color: "black"
    color: "#f0f0f0"

    // 1.拖拽
    Button {
        id: dragButton
        x: 5
        y: 5 + 0 * 45
        icon.source: "qrc:/icons/drag.png"
        width: 40
        height: 40
        highlighted: dragButton.hovered ? true : false

        onClicked: {
            if(dragButton.checked)
            {
                dragButton.checked = false
            }
            else
            {
                dragButton.checked = true
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }
    }

    // 2.撤销
    Button {
        id: undoButton
        x: 5
        y: 5 + 1 * 45
        width: 40
        height: 40
        icon.name: "edit-undo"
        highlighted: undoButton.hovered ? true : false

        onClicked: {
            if(undoButton.checked)
            {
                undoButton.checked = false
            }
            else
            {
                undoButton.checked = true
                dragButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }

    }

    // 3.反撤销
    Button {
        id: redoButton
        x: 5
        y: 5 + 2 * 45
        icon.name: "edit-redo"
        width: 40
        height: 40
        highlighted: redoButton.hovered ? true : false

        onClicked: {
            if(redoButton.checked)
            {
                redoButton.checked = false
            }
            else
            {
                redoButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }


    }

    // 4.画笔
    Button {
        id: pengButton
        x: 5
        y: 5 + 3 * 45
        icon.source: "qrc:/icons/pen.png"
        width: 40
        height: 40
        highlighted: pengButton.hovered ? true : false

        onClicked: {
            if(pengButton.checked)
            {
                pengButton.checked = false
            }
            else
            {
                pengButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }
    }

    // 5.线条
    Button {
        id: lineButton
        x: 5
        y: 5 + 4 * 45
        icon.source: "qrc:/icons/line.png"
        width: 40
        height: 40
        highlighted: lineButton.hovered ? true : false

        onClicked: {
            if(lineButton.checked)
            {
                lineButton.checked = false
            }
            else
            {
                lineButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }
    }

    // 6.箭头
    Button {
        id: arrowButton
        x: 5
        y: 5 + 5 * 45
        icon.source: "qrc:/icons/arrow.png"
        width: 40
        height: 40
        highlighted: arrowButton.hovered ? true : false

        onClicked: {
            if(arrowButton.checked)
            {
                arrowButton.checked = false
            }
            else
            {
                arrowButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }
    }

    // 7.矩形
    Button {
        id: rectButton
        x: 5
        y: 5 + 6 * 45
        icon.source: "qrc:/icons/rect.png"
        width: 40
        height: 40
        highlighted: rectButton.hovered ? true : false

        onClicked: {
            if(rectButton.checked)
            {
                rectButton.checked = false
            }
            else
            {
                rectButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }
    }


    // 8.椭圆
    Button {
        id: ellipseButton
        x: 5
        y: 5 + 7 * 45
        icon.source: "qrc:/icons/ellipse.png"
        width: 40
        height: 40
        highlighted: ellipseButton.hovered ? true : false

        onClicked: {
            if(ellipseButton.checked)
            {
                ellipseButton.checked = false
            }
            else
            {
                ellipseButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }
    }

    // 9.马赛克
    Button {
        id: mosaicButton
        x: 5
        y: 5 + 8 * 45
        icon.source: "qrc:/icons/mosaic.png"
        width: 40
        height: 40
        highlighted: mosaicButton.hovered ? true : false

        onClicked: {
            if(mosaicButton.checked)
            {
                mosaicButton.checked = false
            }
            else
            {
                mosaicButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                textButton.checked = false
                eraseButton.checked = false
            }
        }
    }

    // 10.文字
    Button {
        id: textButton
        x: 5
        y: 5 + 9 * 45
        icon.source: "qrc:/icons/text.png"
        width: 40
        height: 40
        highlighted: textButton.hovered ? true : false

        onClicked: {
            if(textButton.checked)
            {
                textButton.checked = false
            }
            else
            {
                textButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                eraseButton.checked = false
            }
        }
    }

    // 11.清除
    Button {
        id: eraseButton
        x: 5
        y: 5 + 10 * 45
        icon.source: "qrc:/icons/clear.png"
        width: 40
        height: 40
        highlighted: eraseButton.hovered ? true : false

        onClicked: {
            if(eraseButton.checked)
            {
                eraseButton.checked = false
            }
            else
            {
                eraseButton.checked = true
                dragButton.checked = false
                undoButton.checked = false
                redoButton.checked = false
                pengButton.checked = false
                lineButton.checked = false
                arrowButton.checked = false
                rectButton.checked = false
                ellipseButton.checked = false
                mosaicButton.checked = false
                textButton.checked = false
            }
        }
    }


}














