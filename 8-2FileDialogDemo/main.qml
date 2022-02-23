import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Dialogs 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FileDialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent
        Button {
            text : "Choose File or Folder"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                fileDialogId.open()
            }
        }

        Text {
            id: textId
            text : "User hasn't chosen yet"
            wrapMode: Text.Wrap
        }

        FileDialog {
            id: fileDialogId
            title: "Choose File or Folder"
            selectFolder: false
            selectMultiple: true

            onAccepted:{
                textId.text = fileUrls[0]
                for(var i = 0; i < fileUrls.length; i++)
                {
                    console.log("Value " + i + " is : " + fileUrls[i])
                }
            }
            onRejected:{

            }
        }
    }

}
