import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dynamic Models Demo")

    ListModel {
        id: mListModel

        ListElement {
            firstName: "John"; lastName: "Snow"
        }
        ListElement {
            firstName: "Nicholai"; lastName: "Itchenko"
        }
        ListElement {
            firstName: "Mitch"; lastName: "Mathson"
        }
        ListElement {
            firstName: "Ken"; lastName: "Kologorov"
        }
        ListElement {
            firstName: "Vince"; lastName: "Luvkyj"
        }
    }

    ColumnLayout {
        anchors.fill: parent
        ListView{
            id: mListViewId
            model:mListModel
            delegate: delegateId
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        Button {
            text: "Add Item"
            Layout.fillWidth: true
            onClicked: {
                mListModel.append({"firstName" : "Daniel", "lastName" : "Mark"})
            }
        }
        Button {
            text: "Clear"
            Layout.fillWidth: true
            onClicked: {
                mListModel.clear()
            }
        }
        Button {
            text: "Delete Item at index 2"
            Layout.fillWidth: true
            onClicked: {
                if(2 < mListViewId.model.count){
                    mListModel.remove(2, 1)
                }else{
                    console.log("Index is invalid")
                }
            }
        }
        Button {
            text: "Set item at index 2"
            Layout.fillWidth: true
            onClicked: {
                mListModel.set(2, {"firstName": "John", "lastName": "Gakwaya"})
            }
        }
    }

    Component {
        id: delegateId
        Rectangle {
            id: rectangleId
            width: parent.width
            height: 50
            color: "beige"
            border.color: "yellowgreen"
            radius: 14

            Text {
                id: textId
                anchors.centerIn: parent
                text: firstName + " " + lastName
                font.pointSize: 20
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : " + firstName + " " + lastName)
                }
            }
        }
    }
}
