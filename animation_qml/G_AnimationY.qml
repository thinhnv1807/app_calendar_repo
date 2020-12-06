import QtQuick 2.12

NumberAnimation {
    id: animatorX
    property: "y"
    easing.overshoot: 3.952
    easing.type: Easing.OutBack
    duration: 350
}

