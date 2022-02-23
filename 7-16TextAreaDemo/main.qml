import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextArea Demo")

    Column {
        spacing: 40
        width: parent.width

        Label {
            width: parent.width
            wrapMode: Lable.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "TextArea is a multi-line text editor"
        }

        ScrollView {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 600
            height: 150
            TextArea {
                id: textAreaId
                background: Rectangle{
                    width: parent.width
                    height: parent.height
                    color: "black"
                }

                color: "white"
                wrapMode: TextEdit.Wrap
                placeholderText: "Type in your query"
                //text: "Napoleon Bonaparte was a French military and political leader who rose to prominence during the French Revolution and led several successful campaigns during the Revolutionary Wars. He was the de facto leader of the French Republic as First Consul from 1799 to 1804."
            }
        }

        Button {
            text : "Submit"
            onClicked: {
                console.log("The text inside the TextArea is : " + textAreaId.text)
            }
        }


    }
}
