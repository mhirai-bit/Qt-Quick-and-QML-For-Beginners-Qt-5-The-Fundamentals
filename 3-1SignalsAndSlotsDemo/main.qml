

import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and Slots Demo")

    property int increment: 50

    Rectangle {
        id: rectangleId
        width: 200 + increment
        height: 300
        color: "red"

        signal greet(string message) // Declare Signal

        onGreet: {
            console.log("onGreet : greet signal emitted")
        }
        onWidthChanged: {

        }

        function myGreeting(mMessage){
            console.log("myGreeting slot called. The parameter is : " + mMessage)
            increment += 50
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangleId.greet("Hello threre") // Fire the signal
                rectangleId.myGreeting("Hello Hello") // Shouldn't this be enough...?
            }
        }

        Component.onCompleted: {
            greet.connect(myGreeting)
        }
    }
}
