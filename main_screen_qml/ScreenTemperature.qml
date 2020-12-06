import QtQuick 2.0
import "../common_qml"
import "../component_qml"
import "../animation_qml"
import QtMultimedia 5.12
import QtQuick.Timeline 1.0
import AppEnumCalendar 1.0

  Item {
    id: root
    height: 693
    width: 320
    function showScreenApp(data){
       switch(data){
       case AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_DAY: return AppSource.img_scr_day_temperature()
       case AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_NIGHT: return AppSource.img_scr_night_temperature()
       default:return AppSource.img_scr_day_temperature()
       }
    }

    G_Image{
        source: showScreenApp(ScreenManageApp.screen_index)
        anchors.centerIn: parent
    }

    MouseArea{
        anchors.fill: parent
        onPressed: Qt.quit()
    }

    BottomButton{
        id: btn_bottom
        anchors.top: root.top
        anchors.horizontalCenter: root.horizontalCenter
    }

    Component.onCompleted: {
        console.log("thinh", )
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
