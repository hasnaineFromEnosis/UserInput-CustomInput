import QtQuick 2.12
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Rectangle {
    width: 300
    height: 200
    visible: true

    ColumnLayout {
        anchors.fill: parent
        TextField {
            id: singleline
            text: "Initial Text"
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Layout.margins: 5
            background: Rectangle {
               implicitWidth: 200
               implicitHeight: 40
               border.color: singleline.focus ? "#21be2b" : "lightgray"
               color: singleline.focus ? "lightgray" : "transparent"
            }
        }

        TextArea {
            id: multiline
            placeholderText: "Initial text\n...\n...\n"
            Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.margins: 5
            background: Rectangle {
               implicitWidth: 200
               implicitHeight: 100
               border.color: multiline.focus ? "#21be2b" : "lightgray"
               color: multiline.focus ? "lightgray" : "transparent"
            }
        }
    }
}
