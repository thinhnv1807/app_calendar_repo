import QtQuick 2.0
import "../common_qml"
import "../component_qml"
import "../animation_qml"
import QtMultimedia 5.12
import QtQuick.Timeline 1.0
import AppEnumCalendar 1.0
import AppEnum 1.0
import WeatherInfo 1.0

  Item {
    id: root
    height: 693
    width: 320

    G_Image{
        id: logo_id
        source: AppSource.img_logo
        anchors.centerIn: parent
    }

    G_Text_{
        text: "Đang tải dữ liệu..."
        color: "white"
       anchors.verticalCenter: logo_id.bottom
       anchors.verticalCenterOffset: 30
       anchors.horizontalCenter: logo_id.horizontalCenter
    }
}




