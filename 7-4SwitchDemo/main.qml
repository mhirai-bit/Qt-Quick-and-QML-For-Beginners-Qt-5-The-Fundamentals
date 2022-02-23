import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Switch Demo")

    Column {
        width: parent.width
        spacing: 20

        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "WiFi"
            checked: true
            onCheckedChanged: {
                if(checked === true)
                {
                    console.log("WiFi switch is turned ON")
                }else{
                    console.log("WiFi switch is turned OFF")
                }
            }
        }
        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Bluetooth"
        }
        Switch{
            anchors.horizontalCenter: parent.horizontalCenter
            text: "NFC"
            enabled: false
        }
    }
}
