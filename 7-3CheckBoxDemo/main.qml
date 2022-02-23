import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("CheckBox Demo")

    Column {
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        CheckBox {
            text: "Option1"
            checked: true
            onCheckStateChanged: {
                if(checked === true)
                {
                    console.log("Option1 is checked")
                } else {
                    console.log("Option1 is unchecked")
                }
            }
        }
        CheckBox {
            text: "Option2"
        }
        CheckBox {
            text: "Option3"
            checked: false
            enabled: false
        }
    }
}
