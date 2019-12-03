import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: page
    visible: true
    width: 640
    height: 480
    color: "#ffcc99"
    title: qsTr("Inspirational Quotes")

    signal qmlSignal(string num)

    function updateText(text)
    {
        quote.text = text
    }


    TextInput {
        id: numInput
        x: 205
        y: 120
        width: 231
        height: 78
        text: qsTr("1 - 10")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 69
    }

    Text {
        id: quote
        x: 95
        y: 371
        width: 451
        height: 71
        text: qsTr("Inspirational Quote")
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 18

        Image {
            id: image1
            x: -72
            y: -76
            width: 596
            height: 182
            source: "textBorder.png"
            fillMode: Image.Stretch
        }
    }

    MouseArea {
        id: click
        x: 10
        y: 13
        hoverEnabled: true
        anchors.bottomMargin: 169
        anchors.fill: parent
        anchors.topMargin: 211
        anchors.rightMargin: 270
        anchors.leftMargin: 270


        onClicked: {
            page.qmlSignal(numInput.text)
        }
    }

    Image {
        id: image
        x: 270
        y: 211
        width: 100
        height: 100
        source: "Button.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: image2
        x: 140
        y: -31
        width: 361
        height: 201
        source: "dialouge.png"
        fillMode: Image.PreserveAspectFit

        Text {
            id: element
            x: 40
            y: 77
            text: qsTr("Enter A Number between 1 - 10")
            font.pixelSize: 20
        }
    }

    Image {
        id: image3
        x: 569
        y: 7
        width: 59
        height: 53
        fillMode: Image.PreserveAspectFit
        source: "close.png"
    }

    MouseArea {
        id: mouseArea
        x: 569
        y: 7
        width: 59
        height: 53
        onClicked: {
            Qt.quit();
        }
    }




}
