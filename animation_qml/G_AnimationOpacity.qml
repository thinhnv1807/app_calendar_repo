import QtQuick 2.12

NumberAnimation {
    id: animatorOpaccity
    property: "opacity"
    easing.type: Easing.InCubic
    duration: 350
    from: 0.7
    to: 1
}
