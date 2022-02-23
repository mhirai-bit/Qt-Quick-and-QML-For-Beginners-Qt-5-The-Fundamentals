import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Anchors Demo")

    Rectangle {
        id: containerRectId
        width: 300
        height: width
        border.color: "black"
        anchors.centerIn: parent

        Rectangle {
            id: topLeftRectId
            width: 100
            height: width
            color: "magenta"
        }
        Rectangle {
            id: topCenterRectId
            width: 100
            height: width
            color: "yellowgreen"
            anchors.left: topLeftRectId.right
        }
        Rectangle {
            id: topRightRectId
            width: 100
            height: width
            color: "dodgerblue"
            anchors.left: topCenterRectId.right
        }
        Rectangle {
            id: centerLeftRectId
            width: 100
            height: width
            color: "red"
            anchors.top: topLeftRectId.bottom
        }
        Rectangle {
            id: centerCenterRectId
            width: 100
            height: width
            color: "green"
//            anchors.top: topCenterRectId.bottom
//            anchors.left: centerLeftRectId.right
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            //This margin works because we have top margin set
//            anchors.topMargin: 10

            //To have margins working, you have to set the anchor property on that anchor line
//            anchors.rightMargin: 10
//            anchors.horizontalCenterOffset: -10

        }
        Rectangle {
            id: centerRightRectId
            width: 100
            height: width
            color: "blue"
            anchors.top: topRightRectId.bottom
            anchors.left: centerCenterRectId.right
        }
        Rectangle {
            id: bottomLeftRectId
            width: 100
            height: width
            color: "royalblue"
            anchors.top: centerLeftRectId.bottom
        }
        Rectangle {
            id: bottomCenterRectId
            width: 100
            height: width
            color: "yellow"
            anchors.left: centerCenterRectId.left
            anchors.top: centerLeftRectId.bottom
        }
        Rectangle {
            id: bottomRightRectId
            width: 100
            height: width
            color: "pink"
            anchors.left: bottomCenterRectId.right
            anchors.top: centerLeftRectId.bottom
        }
    }

    Rectangle{
        id: siblingRect
        width: 200
        height: 200
        color: "black"
        anchors.right: containerRectId.left
    }
}
