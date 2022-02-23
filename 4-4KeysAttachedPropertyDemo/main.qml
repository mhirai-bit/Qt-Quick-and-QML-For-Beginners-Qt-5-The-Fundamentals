import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached Property")

    Rectangle {
        id: containedRect
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true

        Keys.onDigit1Pressed: {
            console.log("Specific Signal : Pressed on Key 1")
            event.accepted = false
        }

//        Keys.onDigit5Pressed: {
//            if(event.modifiers === Qt.ControlModifier)
//            {
//                console.log("PressedControl + 5")
//            }else{
//                console.log("Pressed regular 5")
//            }
//        }

        Keys.onPressed: {
            if(event.key === Qt.Key_1)
            {
                console.log("General Signal : Pressed on Key 1")
            }

            if((event.key === Qt.Key_5) && (event.modifiers & Qt.ControlModifier))
            {
                console.log("PressedControl + 5")
            }
        }
    }
}
