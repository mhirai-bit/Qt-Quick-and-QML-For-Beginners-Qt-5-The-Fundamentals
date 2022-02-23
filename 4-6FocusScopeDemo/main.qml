import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("FocusScope Demo")

    Column {
        MButton{
            focus: true

        }
        MButton{
//            focus: true
            color: "green"
        }
    }
}
