import QtQuick 2.12
import QtQuick.Window 2.12
import "common_qml"
import "animation_qml"
import "component_qml"
import "main_screen_qml"
import AppEnum 1.0

Window {
    id: window
    visible: true
    width: Screen.width
    height: Screen.height + 2  //"+ 2" issue of active 3 phone
    visibility: Window.FullScreen
    property int index_screen: ScreenManageApp.screen_index
    property bool isTempareture: index_screen === AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_DAY || index_screen == AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_NIGHT
    property bool isCalendar: index_screen === AppE.INDEX_SCREEN_MANAGE_CALENDAR_DAY || index_screen == AppE.INDEX_SCREEN_MANAGE_CALENDAR_NIGHT
    Rectangle{
        id: bgr_base
        color: "gray"
        anchors.fill: parent
    }

    ScreenTemperature{
        id: tempareture
        visible: isTempareture
        onVisibleChanged: if(isTempareture){animation.start(); animationO.start()}
    }

    ScreenCalendar{
        id: calendar
        visible: isCalendar
        onVisibleChanged: if(isCalendar){animation.start(); animationO.start()}
    }

    G_AnimationX{
        id: animation
        target: isTempareture ? tempareture : calendar
    }

    G_AnimationOpacity{
        id: animationO
        target: isTempareture ? tempareture : calendar
    }
}
