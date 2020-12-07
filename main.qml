import QtQuick 2.12
import QtQuick.Window 2.12
import "common_qml"
import "animation_qml"
import "component_qml"
import "main_screen_qml"
import AppEnum 1.0
import WeatherInfo 1.0


Window {
    id: window
    visible: true
    width: Screen.width
    height: Screen.height + 2  //"+ 2" issue of active 3 phone
    visibility: Window.FullScreen
    property int index_screen: ScreenManageApp.screen_index
    property bool is_tempareture: index_screen === AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_DAY || index_screen == AppE.INDEX_SCREEN_MANAGE_TEMPERATURE_NIGHT
    property bool is_calendar: index_screen === AppE.INDEX_SCREEN_MANAGE_CALENDAR_DAY || index_screen == AppE.INDEX_SCREEN_MANAGE_CALENDAR_NIGHT

    Rectangle{
        id: root_screen
        height: parent.height
        width: parent.width


        state: "loading"

        states: [
            State {
                name: "loading"
                PropertyChanges { target: ready_screen; opacity: 0 }
                PropertyChanges { target: loading_screen; opacity: 1 }
            },
            State {
                name: "ready"
                PropertyChanges { target: ready_screen; opacity: 1 }
                PropertyChanges { target: loading_screen; opacity: 0 }
            }
        ]


        AppModel {
            id: model
            onReadyChanged: {
                if (model.ready)
                    root_screen.state = "ready"
                else
                    root_screen.state =  "loading"
            }
        }

        Item{
            id: ready_screen
            height: parent.height
            width: parent.width

            ScreenTemperature{
                id: tempareture
                visible: window.is_tempareture
                weatherCity: (model.hasValidCity ? model.city : "Unknown location")/* + (model.useGps ? " (GPS)" : "")*/
                weatherDescription: model.hasValidCity ? model.weather.weatherDescription : "---"
                weatherTempareture:model.hasValidCity ? model.weather.temperature : "---"
                onVisibleChanged: if(window.is_tempareture){animation.start(); animationO.start()}
            }

            ScreenCalendar{
                id: calendar
                visible: window.is_calendar
                onVisibleChanged: if(window.is_calendar){animation.start(); animationO.start()}
            }

            G_AnimationX{
                id: animation
                target: window.is_tempareture ? tempareture : calendar
            }

            G_AnimationOpacity{
                id: animationO
                target: window.is_tempareture ? tempareture : calendar
            }
        }

        Item{
            id: loading_screen
            height: parent.height
            width: parent.width
            G_Text_{
                text: "loading please wait......"
                color: "black"
                anchors.centerIn: parent
            }
        }

    }



}
