import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Slider Demo")

    Column {
        width: parent.width
        spacing: 20

        Slider {
            anchors.horizontalCenter: parent.horizontalCenter
            from: 1
            to: 100
            value: 40
            onValueChanged: {
                console.log("Value changed to : " + value)
                progressBarId.value = value
            }
        }

        ProgressBar {
            anchors.horizontalCenter: parent.horizontalCenter
            id: progressBarId
            from: 1
            to: 100
            value: 40
        }

    }
}
