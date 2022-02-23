
import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Key Navigation Demo")

    Grid {
        anchors.centerIn: parent
        columns: 2

        Rectangle {
            id: topLeft
            width: 100; height: 100
            color: focus ? "red" : "lightgray"
            focus: true

            KeyNavigation.right: topRight
            KeyNavigation.down: bottomLeft
        }

        Rectangle {
            id: topRight
            width: 100; height: 100
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: topLeft
            KeyNavigation.right: bottomLeft
        }

        Rectangle {
            id: bottomLeft
            width: 100; height: 100
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: topRight
            KeyNavigation.right: bottomRight
        }

        Rectangle {
            id: bottomRight
            width: 100; height: 100
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: bottomLeft
            KeyNavigation.right: topLeft
        }
    }


//    Row {
//        anchors.centerIn: parent

//        Rectangle {
//            id: firstRectId
//            width: 200
//            height: width
//            border.color: "black"
//            color: "green"
//            focus: true

//            onFocusChanged: {
//                if(focus === true)
//                {
//                    color = "gray"
//                }else
//                {
//                    color = "green"
//                }
//            }

//            Keys.onDigit5Pressed: {
//                console.log("I am Rect1")
//            }
//            KeyNavigation.right: secondRectId
//        }

//        Rectangle {
//            id: secondRectId
//            width: 200
//            height: width
//            border.color: "black"
//            color: "blue"

//            onFocusChanged: {
//                if(focus === true)
//                {
//                    color = "gray"
//                }else
//                {
//                    color = "blue"
//                }
//            }

//            Keys.onDigit5Pressed: {
//                console.log("I am Rect2")
//            }
//            KeyNavigation.left: firstRectId
//        }
//    }
}
