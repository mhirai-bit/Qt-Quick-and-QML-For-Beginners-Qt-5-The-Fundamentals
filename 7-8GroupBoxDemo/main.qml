import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("GroupBox Demo")

    Column {
        spacing: 10
        anchors.fill: parent

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping abound RadioButtons"
        }

        GroupBox {
            title: "Choose bobus"
            anchors.horizontalCenter: parent.horizontalCenter
            Column {
                RadioButton {
                    text: "Coke"
                    onCheckedChanged:{
                        if(checked === true){
                            console.log("Coke button checked")
                        }else{
                            console.log("Coke button unchecked")
                        }
                    }
                }
                RadioButton {
                    text: "Green Tea"
                    onCheckedChanged:{
                        if(checked === true){
                            console.log("Green tea button checked")
                        }else{
                            console.log("Green tea button unchecked")
                        }
                    }
                }
                RadioButton {
                    text : "Ice Cream"
                }
            }
        }

        Label {
            width: parent.width
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            text: "A GroupBox wrapping around CheckBoxes"
        }
        GroupBox {
            title: "Choose Qt supported Desktop Platform"
            anchors.horizontalCenter: parent.horizontalCenter
            Column {
                CheckBox {
                    text: "Windows"
                    onCheckedChanged:{
                        if(checked === true){
                            console.log("Windows button checked")
                        }else{
                            console.log("Windows button unchecked")
                        }
                    }
                }
                CheckBox {
                    text: "Mac"
                    onCheckedChanged:{
                        if(checked === true){
                            console.log("Mac button checked")
                        }else{
                            console.log("Mac button unchecked")
                        }
                    }
                }
                CheckBox {
                    text : "Linux"
                }
            }
        }

    }
}
