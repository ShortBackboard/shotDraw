// 在界面加载图片，设置应用程序的图片显示
// priImg：应用程序的图片显示区域的别名
function setPriImgSource() {
    priImg.source = ""  //先清除原有的qurl，类似刷新操作

    // 通过C++注册的shotFullScreen()方法会把截图到的图片pixmap信息赋值给Provider对象screenshot
    // 添加Math.random()用于刷新
    priImg.source = "image://screenshot/" + Math.random()
}

// 全屏截图
function captureScreen() {
    // 设置运行程序不可见
    root.visible = false;

    // 开启定时器
    delayTimer.start();
}

// 矩形区域截图
function cutArea(x, y, w, h){
    shotFullScreen(x+1, y+1, w-3, h-3);
    setPriImgSource();
}

// 加载矩形区域截图显示
function selectImg(){
    selectWin.sImg.source = ""

    // 截图到不可见的组件上显示全屏截屏图片，用于后面矩形区域截图
    selectWin.sImg.source = "image://screenshot/" +  Math.random()
}
