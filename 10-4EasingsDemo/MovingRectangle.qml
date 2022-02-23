import QtQuick 2.11

Item {
    property var backgroundColor
    property var startColor
    property var endColor
    property string easingText
    property int animDuration
    property var easingType
    property int containerwidth

    width: smallConternerRectId1.width
    height: smallConternerRectId1.height
    property int finalX: smallConternerRectId1.width - containedRectId1.width

    Rectangle {
        id: smallConternerRectId1
        width: containerwidth
        height: 50
        color: backgroundColor

        Text {
            text: easingText
            anchors.centerIn: parent
        }

        Rectangle{
            id: containedRectId1
            color: startColor
            width: 50
            height: 50
            border { width: 5; color: "black"}
            radius: 10
//            property int finalX: parent.width - width
            MouseArea {
                anchors.fill: parent
                property bool toRight : false
                onClicked: {
                    if(toRight === false)
                    {
                        toRight = true
                        //Move to right
                        mNumberAnimationId.to = finalX
                        mNumberAnimationId.start()

                        mColorAnimationId.from = startColor
                        mColorAnimationId.to = endColor
                        mColorAnimationId.start()

                    }else {
                        toRight = false
                        //Move to left
                        mNumberAnimationId.to = 0
                        mNumberAnimationId.start()

                        mColorAnimationId.from = endColor
                        mColorAnimationId.to = startColor
                        mColorAnimationId.start()
                    }
                }
            }
            NumberAnimation {
                id: mNumberAnimationId
                target: containedRectId1
                property : "x"
                easing.type : easingType
                to : finalX
                duration: animDuration
            }
            ColorAnimation {
                id:mColorAnimationId
                target: containedRectId1
                property: "color"
                from : startColor
                to: endColor
                duration: animDuration

            }
            Component.onCompleted: {
                console.log("The width of the contained rect is : " + parent.width)
            }
        }
    }
}
