
import QtQuick 2.0

Rectangle {
    id: flashingblob
    width: 100; height: 100
    color: "blue"
    opacity: 1.0

    MouseArea {
        anchors.fill: parent
        onClicked: {
            animateColor.start()
            animateOpacity.start()
        }
    }

    PropertyAnimation {id: animateColor; target: flashingblob; properties: "color"; to: "green"; duration: 1000}

    NumberAnimation {
         id: animateOpacity
         target: flashingblob
         properties: "opacity"
         from: 0.5
         to: 1.0
         loops: Animation.Infinite
         easing {type: Easing.OutBack; overshoot: 500}
    }
}
