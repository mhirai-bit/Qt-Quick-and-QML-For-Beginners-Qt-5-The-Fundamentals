import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("ListView and ListModel Demo")

    ListView {
        id: mListViewId
        anchors.fill: parent
        model: mModelId
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
                text: country + " : " + capital
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on : " + capital + " : " + country)
                }
            }
        }
    }

    ListModel {
        id: mModelId
        ListElement {
            country: "Rwanda"; capital: "Kigali"
        }
        ListElement {
            country: "China"; capital: "Beijing"
        }
        ListElement {
            country: "Japan"; capital: "Tokyo"
        }
        ListElement {
            country: "Nigeria"; capital: "Dakar"
        }
        ListElement {
            country: "Ghana"; capital: "Accra"
        }
        ListElement {
            country: "France"; capital: "Paris"
        }
        ListElement {
            country: "India"; capital: "New Delhi"
        }
        ListElement {
            country: "Uganda"; capital: "Kampala"
        }
    }

    //    Component {
    //        id: delegateId
    //        Rectangle {
    //            id: rectangleId
    //            width: parent.width
    //            height: 50
    //            color: "beige"
    //            border.color: "yellowgreen"
    //            radius: 10

    //            Text {
    //                id: textId
    //                anchors.centerIn: parent
    //                font.pointSize: 20
    //                text: country + " : " + capital
    //            }
    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    console.log("Clicked on : " + capital + " : " + country)
    //                }
    //            }
    //        }
    //    }
}
