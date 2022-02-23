import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Easings Demo")
    id: rootId

    property int animationDuration: 500

    Flickable {
        anchors.fill: parent
        contentHeight: mColumnId.implicitHeight
        ColumnLayout {
            id: mColumnId
            width: parent.width
            spacing: 2

            MovingRectangle {
                backgroundColor: "gray"
                startColor: "beige"
                endColor: "blue"
                animDuration: animationDuration
                easingText: "Linear"
                easingType: Easing.Linear
                containerwidth: rootId.width
            }
            MovingRectangle {
                backgroundColor: "gray"
                startColor: "beige"
                endColor: "green"
                animDuration: animationDuration
                easingText: "InQuad"
                easingType: Easing.InQuad
                containerwidth: rootId.width
            }
        }
    }
}
