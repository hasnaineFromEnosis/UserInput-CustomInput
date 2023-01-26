import QtQuick

Rectangle {
    width: 200
    height: 200

    color: "red"
    Item {
        id: escapeItem
        focus: true

        // Ensure that we get escape key press events first.
        Keys.onShortcutOverride: event.accepted = (event.key === Qt.Key_Escape)

        Keys.onEscapePressed: {
            console.log("escapeItem is handling escape");
            // event.accepted is set to true by default for the specific key handlers
        }
    }

    Shortcut {
        sequence: "Escape"
        onActivated: console.log("Shortcut is handling escape")
    }
}
