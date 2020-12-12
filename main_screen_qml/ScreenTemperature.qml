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
    property string weatherCity        : "---"
    property string weatherDescription : "---"
    property string weatherTempareture : "---"
    property string weatherTemparetureMax : "---"
    property string weatherTemparetureMin : "---"

    AppModel {
        id: model1
    }

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

    Rectangle{
        id: icon_big_id
        width:  200
        height: 200
        anchors.centerIn: root
        G_Text_{
            id: icon_big_id_text
            text: model1.weather.weatherIcon
            anchors.centerIn: parent
            color: "black"
        }
    }


    Row{
        id: forcast_id
        spacing: 8
        anchors.top: root.top
        anchors.topMargin: root.height - 180
        anchors.horizontalCenter: root.horizontalCenter
        height: 150
        width: forcast_01.width*4 + spacing*3

        Forecast{
            id: forcast_01
            dayOfWeek: (model1.hasValidWeather ?
                            model1.forecast[0].dayOfWeek : "??")
            tempareture: (model1.hasValidWeather ?
                              model1.forecast[0].temperature : "??/??")
            icon:  (model1.hasValidWeather ?
                        model1.forecast[0].weatherIcon : "01d")
        }

        Forecast{
            id: forcast_02
            dayOfWeek: (model1.hasValidWeather ?
                            model1.forecast[1].dayOfWeek : "??")
            tempareture: (model1.hasValidWeather ?
                              model1.forecast[1].temperature : "??/??")
            icon:  (model1.hasValidWeather ?
                        model1.forecast[1].weatherIcon : "01d")
        }

        Forecast{
            id: forcast_03
            dayOfWeek: (model1.hasValidWeather ?
                            model1.forecast[2].dayOfWeek : "??")
            tempareture: (model1.hasValidWeather ?
                              model1.forecast[2].temperature : "??/??")
            icon:  (model1.hasValidWeather ?
                        model1.forecast[2].weatherIcon : "01d")
        }

        Forecast{
            id: forcast_04
            dayOfWeek: (model1.hasValidWeather ?
                            model1.forecast[3].dayOfWeek : "??")
            tempareture: (model1.hasValidWeather ?
                              model1.forecast[3].temperature : "??/??")
            icon:  (model1.hasValidWeather ?
                        model1.forecast[3].weatherIcon : "01d")
        }


    }

    Component.onCompleted: {
        console.log("thinh", )
    }
}




