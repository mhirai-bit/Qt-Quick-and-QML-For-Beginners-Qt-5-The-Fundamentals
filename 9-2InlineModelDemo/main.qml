import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Inline Demo")

    ListView {
        id: mListViewId
        anchors.fill: parent
        model: ["January", "February", "March", "April","May","June","July","Aug","Sept"]
        //        delegate: delegateId
        delegate :         Rectangle {
            id: rectangleId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id: textId
                anchors.centerIn: parent
                font.pointSize: 20
                text: modelData
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : " + modelData)
                }
            }
        }
    }
}
