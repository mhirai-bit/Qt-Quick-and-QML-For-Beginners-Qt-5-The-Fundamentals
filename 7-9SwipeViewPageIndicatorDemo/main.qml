import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("PageIndicator and SwipeView Demo")

    SwipeView {
        id: swipeViewId
        anchors.fill: parent
        currentIndex: pageIndicatorId.currentIndex

        Image{
            id: image1
            source: "http://www.blikoontech.com/wp-content/uploads/2018/06/1.png"
        }
        Image{
            id: image2
            source: "http://www.blikoontech.com/wp-content/uploads/2018/06/2.png"
        }
        Image{
            id: image3
            source: "http://www.blikoontech.com/wp-content/uploads/2018/06/3.png"
        }
    }

    PageIndicator{
        anchors.horizontalCenter: parent.horizontalCenter
        id: pageIndicatorId
        anchors.bottom: parent.bottom

        //
        currentIndex: swipeViewId.currentIndex
        interactive: true
        count: swipeViewId.count
    }
}
