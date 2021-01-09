import QtQuick 2.0
import "../common_qml"
import "../component_qml"
import "../animation_qml"
import QtMultimedia 5.12
import QtQuick.Timeline 1.0
import AppEnum 1.0
import AppEnumCalendar 1.0

  Item {
    id: root
    height: 693
    width: 320
    function showScreenApp(data){
       switch(data){
       case AppE.INDEX_SCREEN_MANAGE_CALENDAR_DAY: return AppSource.img_scr_day()
       case AppE.INDEX_SCREEN_MANAGE_CALENDAR_NIGHT: return AppSource.img_scr_night()
       default:return AppSource.img_scr_day
       }
    }

    G_Image{
        source: showScreenApp(ScreenManageApp.screen_index)
        anchors.centerIn: parent
    }


    Component.onCompleted: {
        console.log("thinh", CALENDAR_WEEK_ENUM.INDEX_CALENDAR_WEEK_MO)
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
