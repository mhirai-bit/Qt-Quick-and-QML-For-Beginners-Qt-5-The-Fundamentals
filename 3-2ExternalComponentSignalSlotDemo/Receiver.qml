import QtQuick 2.11

Item {
    property alias rectColor: receiverrRectId.color
    width: receiverrRectId.width
    height: receiverrRectId.height

    function receiveInfo(count){
        receiverDisplayTextId.text = count
        console.log("Receiver received number : " + count)
    }

    Rectangle {
        id : receiverrRectId
        width: 200
        height: 200
        color: "red"

        Text {
            id: receiverDisplayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: "0"
        }
    }

}
