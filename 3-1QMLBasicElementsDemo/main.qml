import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements Demo")

    Item {
        id: containerItemId
        x: 150; y: 50

        width: 600
        height: 300

        Rectangle{
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle {
            width: 50
            height: 50
            x: 0
            y: 10
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle {
            width: 50
            height: 50
            x: 60
            y: 10
            color: "green"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle {
            width: 50
            height: 50
            x: 120
            y: 10
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }
        Rectangle {
            width: 50
            height: 50
            x: 180
            y: 10
            color: "magenta"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text {
            x: 100
            y: 100
            id: mTextId
            text: "Hello World!"
//            font.family: "Helvetica"; font.pointSize: 13; font.bold: true
//            font {
//                family: "Helvetice"
//                pointSize: 13
//                bold: true
//            }
            font {family: "Helvetice"; pointSize: 13; bold: true}

            color: "red"
        }

        Image {
            x: 10
            y: 150
            width: 100
            height: 100
            //Load image from the working directory
            source: "file:Qt.png"
        }

        Image {
            x: 150
            y: 150
            width: 100
            height: 100
            //Loading image from the resource file
            source: "new/prefix/images/Qt.png"
        }



//        Image {
//            x: 450
//            y: 150
//            width: 100
//            height: 100
//            //Specify the full path to the image
//            source: "https://unsplash.com/images/nature/flower"
//        }

}
