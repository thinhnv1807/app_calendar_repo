import QtQuick 2.12



NumberAnimation {
    id: animatorX
    property: "x"
    easing.type: Easing.OutCirc
    duration: 350
    from: target.width
    to: 0
}

