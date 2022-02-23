import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ProgressBar Demo")

    Column {
        width: parent.width
        spacing: 20

        Button {
            text: "Start"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                progressBarId.value = 78
            }
        }

        Dial {
            id: dialId
            anchors.horizontalCenter: parent.horizontalCenter
            from: 1
            to: 100
            value: 40
            onValueChanged: {
                progressBarId.value = value
            }
        }

        ProgressBar {
            id: progressBarId
            anchors.horizontalCenter: parent.horizontalCenter
            from: 1
            to: 100
            value: 40
        }

        ProgressBar {
            id: progressBarId1
            anchors.horizontalCenter: parent.horizontalCenter
            indeterminate: true
        }
    }
}
