import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flickable and Scrollbar Demo")

    Flickable {
        width: parent.width
        height: parent.height
        contentHeight: mColumnId.implicitHeight

        Column {
            id: mColumnId
            anchors.fill: parent

            Rectangle {
                color: "red"
                width: parent.width
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 1"
                    font.pointSize: 30
                    color: "white"
                }
            }

            Rectangle {
                color: "blue"
                width: parent.width
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 2"
                    font.pointSize: 30
                    color: "white"
                }
            }

            Rectangle {
                color: "yellow"
                width: parent.width
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 3"
                    font.pointSize: 30
                    color: "white"
                }
            }

            Rectangle {
                color: "magenta"
                width: parent.width
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 4"
                    font.pointSize: 30
                    color: "white"
                }
            }

            Rectangle {
                color: "brown"
                width: parent.width
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 5"
                    font.pointSize: 30
                    color: "white"
                }
            }
            Rectangle {
                color: "yellowgreen"
                width: parent.width
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 6"
                    font.pointSize: 30
                    color: "white"
                }
            }
            Rectangle {
                color: "dodgerblue"
                width: parent.width
                height: 200
                Text {
                    anchors.centerIn: parent
                    text: "Element 7"
                    font.pointSize: 30
                    color: "white"
                }
            }
        }

        ScrollBar.vertical: ScrollBar{}
    }
}
