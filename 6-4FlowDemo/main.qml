import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flow Demo")

    Flow {
        id: containerFlowId
        width: parent.width
        height: parent.height

        flow: Flow.TopToBottom
        layoutDirection: Qt.RightToLeft

        spacing: 20

        Rectangle{
            id: topLeftRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "1"
            }
        }
        Rectangle{
            id: topCenterRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "2"
            }
        }
        Rectangle{
            id: topRightRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "3"
            }
        }
        Rectangle{
            id: centerLeftRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "4"
            }
        }
        Rectangle{
            id: centerCenterRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "5"
            }
        }
        Rectangle{
            id: centerRightRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "6"
            }
        }
        Rectangle{
            id: bottomLeftRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "7"
            }
        }
        Rectangle{
            id: bottomCenterRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "8"
            }
        }
        Rectangle{
            id: bottomRightRectId
            width: 70
            height: 70
            color: "green"
            Text {
                anchors.centerIn: parent
                color: "black"
                font.pointSize: 30
                text: "9"
            }
        }

    }
}
