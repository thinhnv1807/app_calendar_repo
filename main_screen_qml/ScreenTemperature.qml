import QtQuick 2.0
import "../common_qml"
import "../component_qml"
import "../animation_qml"
import QtMultimedia 5.12
import QtQuick.Timeline 1.0
import AppEnumCalendar 1.0
import AppEnum 1.0

  Item {
    id: root
    height: 693
    width: 320
    property string weatherCity        : "---"
    property string weatherDescription : "---"
    property string weatherTempareture : "---"

    function showScreenApp(data){
       switch(data){
       case AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_DAY: return AppSource.img_scr_day_temperature()
       case AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_NIGHT: return AppSource.img_scr_night_temperature()
       default:return AppSource.img_scr_day_temperature()
       }
    }

    G_Image{
        id: bgr_screen
        source: showScreenApp(ScreenManageApp.screen_index)
        anchors.centerIn: parent
    }


    G_Text_ {
        id: city_id
        text: weatherCity
        anchors.top: parent.top
        anchors.topMargin: 55
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 18
    }

    G_Text_{
        id: tempareture_id
        text: weatherTempareture + "C"
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 80
    }

    G_Text_{
        id: description_id
        text: weatherDescription
        anchors.verticalCenter: tempareture_id.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        maximumLineCount: 10000
        anchors.verticalCenterOffset: 59
        anchors.horizontalCenter: tempareture_id.horizontalCenter
        font.pixelSize: 24
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
