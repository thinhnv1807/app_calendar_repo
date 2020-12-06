import QtQuick 2.0
import QtGraphicalEffects 1.0
Item {
    id: root
    width: 100
    height: 100
    property alias  burTargetHiden: effectSource.sourceItem
    property alias  burProperty: blur
    property alias  burbgr: rect_bgr

    Rectangle {
        id: rect_bgr
        height: root.height
        width: root.width
    }

    ShaderEffectSource {
        id: effectSource
        anchors.fill: rect_bgr
        sourceRect: Qt.rect(rect_bgr.x,rect_bgr.y,rect_bgr.width,rect_bgr.height)
    }

    FastBlur{
        id: blur
        anchors.fill: effectSource
        source: effectSource
        radius: 10
    }


}
