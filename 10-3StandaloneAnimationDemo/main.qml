import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Standalone Animation Demo")
    
    Rectangle {
        id: containerRectId
        anchors.fill: parent
        color: "beige"
        
        Rectangle{
            id: containedRectId
            width: 100
            height: 100
            color: "dodgerblue"
            x: 50; y: 50
            
            NumberAnimation {
                id :mXAnimationId
                target: containedRectId
                property: "x"
                duration: 2000
                to : 530
            }

            RotationAnimation {
                id: mRotationAnimation
                target: containedRectId
                property : "rotation"
                to : 200
                duration: 2000
            }
        }
        MouseArea {
            anchors.fill: parent
            onPressed : {
                mXAnimationId.start()
                mRotationAnimation.start()
            }
            onReleased : {
                mXAnimationId.stop()
                mRotationAnimation.stop()
            }
        }
    }
}
