import QtQuick
import QtQuick.Controls 2.4

Rectangle {
    width: 600
    height: 400
    color: "red"
    clip: true

    Flickable {
        clip: true
        width: 200; height: 200
        contentWidth: image.width; contentHeight: image.height

        Image { id: image; source: "assets/bigImage.jpg" }
    }

    Flickable {
        id: flickable
        x:200
        clip: true
        width: 200; height: 200
        contentWidth: image2.width; contentHeight: image2.height

        boundsMovement: Flickable.StopAtBounds
        boundsBehavior: Flickable.DragAndOvershootBounds
        transform: Rotation {
            axis { x: 0; y: 1; z: 0 }
            origin.x: flickable.width / 2
            origin.y: flickable.height / 2
            angle: Math.min(30, Math.max(-30, flickable.horizontalOvershoot))
        }
        Image { id: image2; source: "assets/bigImage.jpg" }
    }

    Flickable {
        y:200
        clip: true
        width: 200; height: 200
        contentWidth: image3.width; contentHeight: image3.height
        boundsMovement: Flickable.StopAtBounds
        boundsBehavior: Flickable.DragOverBounds
        opacity: Math.max(0.5, 1.0 - Math.abs(verticalOvershoot) / height)
        Image { id: image3; source: "assets/bigImage.jpg" }
    }

    Flickable {
        x: 200
        y: 200
        width: 200; height: 200
        contentWidth: 300; contentHeight: 300
        clip: true

        rebound: Transition {
            NumberAnimation {
                properties: "x,y"
                duration: 1000
                easing.type: Easing.OutBounce
            }
        }

        Rectangle {
            width: 300; height: 300
            gradient: Gradient {
                GradientStop { position: 0.0; color: "lightsteelblue" }
                GradientStop { position: 1.0; color: "blue" }
            }
        }
    }

    Rectangle {
        x: 400
        width: 200; height: 200
        color: "green"

        Flickable {
            id: flickable2
            clip: true
            width: 200; height: 200
            contentWidth: image5.width; contentHeight: image5.height

            Image { id: image5; source: "assets/bigImage.jpg" }
        }

        Rectangle {
            id: scrollbar
            anchors.right: flickable2.right
            y: flickable2.visibleArea.yPosition * flickable2.height
            width: 10
            height: flickable2.visibleArea.heightRatio * flickable2.height
            color: "blue"
        }
    }
}
