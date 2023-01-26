import QtQuick
import QtQuick.Controls 2.4

Rectangle {
    width: 500
    height: 500

    //Window code that imports MyWidget
    Rectangle {
        id: window
        color: "lightseagreen"; width: 250; height: 150

        Column {
            anchors.centerIn: parent; spacing: 15

//            MyWidget {
//                focus: true             //set this MyWidget to receive the focus
//                color: "lightblue"
//            }
//            MyWidget {
//                color: "palegreen"
//            }

            MyClickableWidget {
                focus: true             //set this MyWidget to receive the focus
                color: "lightblue"
            }
            MyClickableWidget {
                color: "palegreen"
            }
        }
    }
}
