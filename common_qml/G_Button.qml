import QtQuick 2.12


Item {
    id: root
    height: 100
    width: 100
    property alias button_bgr  : bgr_btn
    property alias button_lable: lable_btn
    property alias button_mouse: mou
    property alias button_temp_bgr: temp_bgr


   Rectangle{
       id: temp_bgr
       color: "red"
       visible: !bgr_btn.visible
       radius: 20
       anchors.fill: parent
   }

   G_Image{
       id:bgr_btn
       anchors.centerIn: parent
   }

   G_Text_{
       id:lable_btn
       text: "button"
       anchors.centerIn: parent
   }


   MouseArea{
       id:mou
       height: parent.height
       width: parent.width
       anchors.centerIn: parent

       onPressed: {
           console.log("button press")
       }

       onReleased: {
           console.log("button released")
       }

       onPressAndHold: {
           console.log("button press and hold")
       }

       onDoubleClicked: {
           console.log("button double lick")
       }

       onCanceled: {
           console.log("button canceled")
       }
   }

}
