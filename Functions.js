// 在界面加载图片
function setPriImgSource() {
    priImg.source = ""  //先清除原有的qurl，类似刷新操作

    // 通过C++注册的shotFullScreen()方法会把截图到的图片pixmap信息赋值给Provider对象screenshot
    priImg.source = "image://screenshot/"
}

// 截取屏幕
function captureScreen(){
    // 设置运行程序不可见
    root.visible = false;

    // 开启定时器
    delayTimer.start();
}

