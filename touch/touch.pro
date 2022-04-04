QT += qml quick quickcontrols2
TARGET = touch
!no_desktop: QT += widgets

SOURCES += \
    src/main.cpp

SOURCES += \
    include/qtquickcontrolsapplication.h

HEADERS = include/myprint.h

INCLUDEPATH += include

OTHER_FILES += \
    main.qml 

RESOURCES += \
    resources.qrc
