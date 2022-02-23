import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Rest APIs Demo")

    function fetchJokes(url, callback){
        var xhr = new XMLHttpRequest();

        xhr.onreadystatechange = function() {
            //XMLHtpRequest.HEADERS_RECEIVED
            //XMLLHttpRequest.DONE
            if(xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED)
            {
                console.log("Headers received")
            }else if(xhr.readyState === XMLHttpRequest.DONE){
                if(xhr.status == 200){
                    console.log("Resource found")
                    callback(xhr.responseText.toString())

                }else{
                    console.log("Resource not found")
                    callback(null)
                }
            }
        }

        //Kick off the download
        xhr.open("GET", url)
        xhr.send()
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        ListModel {
            id: mListModelId
        }

        ListView {
            id: mListViewId
            model: mListModelId
            delegate: delegateId
            Layout.fillWidth : true
            Layout.fillHeight: true

        }

        SpinBox {
            id: spinBoxId
            Layout.fillWidth : true
            value: 10

        }

        Button {
            id: buttonId
            Layout.fillWidth : true
            text: "Fetch"
            onClicked: {
                fetchJokes("http://api.icndb.com/jokes/random/" + spinBoxId.value, function(response){
                    if(response){
                        //Parse the data
                        var object = JSON.parse(response)

                        //Loop over the json object capturing joke data
                        object.value.forEach(function(joke){
                            mListModelId.append({"joke": joke.joke})
                        })

                    }else{
                        console.log("Something went wrong")
                    }
                })
            }

        }

        Component {
            id: delegateId
            Rectangle {
                id: rectangleId
                width: parent.width
                height: textId.implicitHeight + 30
                color: "beige"
                border.color: "yellowgreen"
                radius: 5

                Text {
                    width : parent.width
                    height: parent.height
                    id: textId
                    anchors.centerIn: parent
                    text : joke // Or modelData
                    font.pointSize: 13
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

    }
}
