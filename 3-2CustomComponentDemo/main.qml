
import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Component Demo")


//    Row {
//        spacing:20
//        Rectangle {
//            width : 300
//            height : 100
//            color : "red"
//        }
//        Rectangle {
//            width : 300
//            height : 100
//            color : "blue"
//        }
//    }

    Column {
        MButtom{
            buttonText : "Button1"
            onButtonClicked: {
                console.log("Clicked on Button 1 from main file")
            }

        }

        MButtom{
            buttonText : "Button2"
            onButtonClicked: {
                console.log("Clicked on Button 2 from main file")
            }
        }
    }




}
