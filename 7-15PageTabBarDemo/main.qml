import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Page and TabBar Demo")

    Page {
        id: pageId
        anchors.fill: parent

        header: Label {
            text: "Page and TabBar Demo"
            horizontalAlignment: Text.AlignHCenter
        }

        SwipeView {
            id: swipeViewId
            anchors.fill: parent
            currentIndex: tabBarId.currentIndex

            Image{
                source: ""
                Text {
                    text: "first"
                }
            }
            Image{
                source: ""
                Text {
                    text: "second"
                }
            }
            Image{
                source: ""
                Text {
                    text: "third"
                }
            }

        }

        footer: TabBar{
            id: tabBarId
            currentIndex: swipeViewId.currentIndex

            TabButton {
                text: "First"
            }
            TabButton {
                text: "Second"
            }
            TabButton {
                text: "Third"
            }
        }

    }

}
