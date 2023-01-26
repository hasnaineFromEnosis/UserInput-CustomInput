import QtQuick 2.15

Item {
    id: root

    width: 320
    height: 480

    Rectangle {
        color: "#272822"
        width: 320
        height: 480
    }

    Rectangle {
        id: rectangle
        x: 40
        y: 20
        width: 120
        height: 120
        color: "red"

        TapHandler {
            onTapped: rectangle.width += 10
        }
    }
}
