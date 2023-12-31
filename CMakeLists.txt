cmake_minimum_required(VERSION 3.26)

project(shotDraw VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)
find_package(Qt6 REQUIRED COMPONENTS Widgets)
find_package(X11 REQUIRED)

qt_standard_project_setup()

qt_add_executable(appshotDraw)

find_package(Qt6 REQUIRED COMPONENTS Quick)
include_directories(${X11_INCLUDE_DIR})
link_directories(${X11_LIB_DIR})
target_link_libraries(appshotDraw PRIVATE Qt6::Quick)
target_link_libraries(appshotDraw PRIVATE ${X11_LIBRARIES})

target_sources(appshotDraw
    PRIVATE
        main.cpp
        selectImageProvider.h
        screenCapture.h     screenCapture.cpp
        share.h             share.cpp
        
    PUBLIC
        resource.qrc
        
)

qt_add_qml_module(appshotDraw
    URI shotDraw
    VERSION 1.0
    QML_FILES 
        Main.qml
        Header.qml
        Left.qml
        Right.qml
        Bottom.qml
        SelectWindow.qml
        Dialogs.qml
        Functions.js

)

target_compile_features(appshotDraw PRIVATE cxx_std_20)

set_target_properties(appshotDraw PROPERTIES
    AUTORCC TRUE
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appshotDraw
    PRIVATE 
        Qt6::Quick
        Qt6::Widgets
        ${X11_LIBRARIES}
)

install(TARGETS appshotDraw
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

target_link_libraries(appshotDraw PRIVATE Qt6::Widgets)
target_link_libraries(appshotDraw PRIVATE Qt6::Core)






















































#qt_add_executable(shotDraw)  //Creates and finalizes an application target of a platform-specific type.
#This command performs the following tasks:
#    1. Create a CMake target of the appropriate type for the target platform.
#    2. Link the target to the Qt::Core library.
#    3. Handle finalization of the CMake target.



# qt_standard_project_setup()     #set(CMAKE_AUTOUIC ON)  set(CMAKE_AUTOMOC ON)

# @if %{HasTranslation}
# find_package(Qt6 REQUIRED COMPONENTS Core Quick LinguistTools)
# @else
# find_package(Qt6 REQUIRED COMPONENTS Core Quick)
# @endif

# target_sources(appshotDraw
#     PRIVATE
#         main.cpp
#         qml.qrc
#     @if %{HasTranslation}
#         %{TsFileName}
#     @endif
#         
#     PUBLIC
#         
# )

# qt_import_qml_plugins(shotDraw)
