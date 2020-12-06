import QtQuick 2.12
import "../common_qml"
import QtQuick.Timeline 1.0
import QtMultimedia 5.12
import AppEnum 1.0

Item {
    width: 320
    height: 50

    G_Button{
        id: btn_1
        width: 50
        height: 50
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        button_mouse.onReleased: ScreenManageApp.screen_index = AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_DAY
    }

    G_Button {
        id: btn_2
        width: 50
        height: 50
        anchors.left: btn_1.right
        anchors.top: btn_1.top
        anchors.topMargin: 0
        anchors.leftMargin: 40
        button_mouse.onReleased: ScreenManageApp.screen_index = AppE.INDEX_SCREEN_MANAGE_CALENDAR_DAY
    }

    G_Button {
        id: btn_3
        width: 50
        height: 50
        anchors.left: btn_2.right
        anchors.top: btn_2.top
        anchors.topMargin: 0
        anchors.leftMargin: 40
        button_mouse.onReleased: ScreenManageApp.screen_index = AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_NIGHT
    }

    G_Button {
        id: btn_4
        width: 50
        height: 50
        anchors.left: btn_3.right
        anchors.top: btn_3.top
        anchors.topMargin: 0
        anchors.leftMargin: 40
        button_mouse.onReleased: ScreenManageApp.screen_index = AppE.INDEX_SCREEN_MANAGE_CALENDAR_NIGHT
    }

}
