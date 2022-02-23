import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Downloading Http Data")

    //Asynchronously
    function downloadData(url, callback)
    {
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


    //Synchronously : Not recommended
    //    function downloadData(url){
    //        var xhr = new XMLHttpRequest();

    //        xhr.onreadystatechange = function() {
    //            //XMLHtpRequest.HEADERS_RECEIVED
    //            //XMLLHttpRequest.DONE
    //            if(xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED)
    //            {
    //                console.log("Headers received")
    //            }else if(xhr.readyState === XMLHttpRequest.DONE){
    //                if(xhr.status == 200){
    ////                    console.log("Got the data, it is :" + xhr.responseText.toString())
    //                    textAreaId.text = xhr.responseText.toString();

    //                }else{
    //                    console.log("Something went wrong")
    //                }
    //            }
    //        }

    //        //Kick off the download
    //        xhr.open("GET", url)
    //        xhr.send()
    //    }


    TextArea {
        id: textAreaId
        anchors.fill: parent
        textFormat: TextArea.RichText
        text: "Html Data here"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            //Synchronously : Not recommended
//            downloadData("http://www.icndb.com/")

            //Asynchronously
            downloadData("http://www.icndb.com/", function(response){
                if(response)
                {
                    textAreaId.text = response
                }else{
                    //null
                    console.log("Something went wrong")
                }
            })

        }
    }
}
