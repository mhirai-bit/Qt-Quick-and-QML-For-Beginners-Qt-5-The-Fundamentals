import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ComboBox Demo")

    Column {
        spacing: 40
        width: parent.width

        Label {
            text: "Non Editable Combo"
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            width: parent.width
        }

        ComboBox {
            id: nonEditableComboId
            model: ["One", "Two", "Three", "Four"]
            anchors.horizontalCenter: parent.horizontalCenter
            onActivated: {
                console.log("[" + currentIndex + "]" + currentText + " is activated")
            }
        }

        Label {
            text: "Editable Combo"
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            width: parent.width
        }

        ComboBox {
            id: editableComboId
            editable: true
            textRole: "text"
            model: ListModel{
                id: model
                ListElement {text: "Dog"; location: "Kigali"}
                ListElement {text: "Chicken"; location: "Beijing"}
                ListElement {text: "Cat"; location: "Mumbai"}
                ListElement {text: "Meerkat"; location: "Paris"}
            }

            anchors.horizontalCenter: parent.horizontalCenter
            onActivated: {
                console.log("[" + currentIndex + "]" + currentText + " is activated")
            }

            onAccepted: {
                if(find(editText) === -1)
                {
                    model.append({text: editText, location: "US"})
                }
            }
        }
        Button {
            text: "Capture current element"
            anchors.horizontalCenter: parent.horiozontalCenter
            onClicked: {
                console.log("[" + model.get(editableComboId.currentIndex).text + "]: " + model.get(editableComboId.currentIndex).location )
            }
        }
    }
}
