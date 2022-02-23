import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ColorDialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent
        Button {
            text : "Choose Color"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                colorDialogId.open()
            }

        }

        Rectangle{
            width: 200
            height: 200
            id: rectangleId
            border.color: "black"
            border.width: 8
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ColorDialog {
            id: colorDialogId
            title: "Plesae Choose a Color"
            onAccepted: {
                console.log("User chose color : " + color)
                rectangleId.color = color
            }

            onCurrentColorChanged: {
                console.log("Current color changed")
            }

            onRejected: {
                console.log("User rejected dialog")
            }
        }
    }


}
