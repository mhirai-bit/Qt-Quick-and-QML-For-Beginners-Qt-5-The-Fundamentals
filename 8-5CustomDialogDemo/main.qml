import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Dialogs Demo")
    readonly property int buttonWidth: 300

    Column {
        spacing: 40
        width: parent.width

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "Dialog is a popup that is mostly used for short-term tasks "
                + "and brief communications with the user."
        }

        Button {
            text: "Message"
            anchors.horizontalCenter: parent.horizontalCenter
            width: buttonWidth
            onClicked: messageDialog.open()

            Dialog {
                id: messageDialog

                x: (parent.width - width) / 2
                y: (parent.height - height) / 2

                title: "Message"

                Label {
                    text: "Lorem ipsum dolor sit amet..."
                }
            }
        }

    }
}
