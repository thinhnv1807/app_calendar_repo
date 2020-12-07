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

    G_Image{
        id: bgr_screen
        source: AppSource.img_bgr_app_day()
        anchors.centerIn: parent
    }

    G_Text_ {
        id: city_id
        text: weatherCity
        anchors.top: parent.top
        anchors.topMargin: 35
        anchors.horizontalCenter: parent.horizontalCenter
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 18
    }

    G_Text_{
        id: tempareture_id
        text: weatherTempareture
        anchors.verticalCenter: city_id.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Arial"
        font.bold: false
        anchors.verticalCenterOffset: 100
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: city_id.horizontalCenter
        font.pixelSize: 70
    }

    G_Text_{
        id: description_id
        text: weatherDescription
        anchors.verticalCenter: tempareture_id.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Arial"
        font.italic: true
        maximumLineCount: 10000
        anchors.verticalCenterOffset: 59
        anchors.horizontalCenter: tempareture_id.horizontalCenter
        font.pixelSize: 20
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
