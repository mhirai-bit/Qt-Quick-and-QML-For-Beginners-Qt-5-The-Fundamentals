import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Transforms Demo")

    Rectangle {
        id: containerRectId
        anchors.fill: parent
        color: "beige"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                rect1Id.x = 50
                rect2Id.rotation = 0
                rect3Id.scale = 1
            }
        }
    }
    ClickableRect {
        id: rect1Id
        width: 100
        height: 100
        x: 50
        y: 100
        color: "red"
        onClicked: {
            //Translation on x
            x += 20
        }
    }

    ClickableRect {
        id: rect2Id
        transformOrigin: Item.BottomRight
        width: 100
        height: 100
        x: 250
        y: 100
        color: "green"
        onClicked: {
            //Rotation
            rotation += 15
        }
    }
    ClickableRect {
        id: rect3Id
        transformOrigin: Item.BottomLeft
        width: 100
        height: 100
        x: 450
        y: 100
        color: "blue"
        onClicked: {
            //Scaling
            scale += 0.05
            rotation += 15
        }
    }
}
