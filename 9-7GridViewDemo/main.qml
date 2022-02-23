import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("GridView Demo")

    ListModel {
        id: modelId

        ListElement{
            mNumber: 1
            mColor: "red"
        }
        ListElement{
            mNumber: 2
            mColor: "blue"
        }
        ListElement{
            mNumber: 3
            mColor: "green"
        }
        ListElement{
            mNumber: 4
            mColor: "dodgerblue"
        }
        ListElement{
            mNumber: 5
            mColor: "yellowgreen"
        }
        ListElement{
            mNumber: 6
            mColor: "purple"
        }
        ListElement{
            mNumber: 7
            mColor: "brown"
        }
        ListElement{
            mNumber: 8
            mColor: "pink"
        }
        ListElement{
            mNumber: 9
            mColor: "yellow"
        }
    }

    GridView {
        id: mGridViewId
        layoutDirection:Qt.RightToLeft
//        flow: GridView.FlowTopToBottom
        anchors.fill: parent
        model: modelId
        delegate: Rectangle {
            width: 100
            height: width
            color: mColor
            Text {
                text: mNumber
                anchors.centerIn: parent
                font.pointSize: 10
            }
        }
    }
}
