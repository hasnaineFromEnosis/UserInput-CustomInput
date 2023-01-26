import QtQuick 2.3

Rectangle {
    id: button
    width: 300; height: 300
    color: "red"

    Rectangle {
        width: 150
        height: 150
        color: "green"
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("area1 clicked")
            onDoubleClicked: console.log("area1 double clicked")
            onEntered: console.log("mouse1 entered the area")
            onExited: console.log("mouse1 left the area")
        }
    }

    Rectangle {
        width: 150
        height: 150
        x: 150
        y: 150
        color: "blue"

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onEntered: console.log("mouse2 entered the area")
            onExited: console.log("mouse2 left the area")
        }

    }


}
