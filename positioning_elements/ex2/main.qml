import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 400
    height: 700
    title: "Maket"
    color: "#f5f5f5"

    Rectangle {
        id: header
        color: "#dcdcdc"

        height: 70
        width: parent.width

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top

        Text {
            text: "Header"
            font.pointSize: 15
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: content
        color: "#f5f5f5"
        border.color: "#dddddd"
        border.width: 2

        height: parent.height - (header.height + mini_rect_1.height)
        width: parent.width - 25

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: header.bottom
        anchors.bottom: mini_rect_1.top
        anchors.topMargin: 15
        anchors.bottomMargin: 15

        Text {
            text: "Content"
            font.pointSize: 15
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: mini_rect_1
        color: "#dcdcdc"

        height: 70
        width: parent.width / 3

        anchors.bottom: parent.bottom
        anchors.left: parent.left

        Text {
            text: "1"
            font.pointSize: 15
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: mini_rect_2
        color: "#dcdcdc"

        height: 70
        width: parent.width / 3

        anchors.bottom: parent.bottom
        anchors.left: mini_rect_1.right
        anchors.leftMargin: 8

        Text {
            text: "2"
            font.pointSize: 15
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: mini_rect_3
        color: "#dcdcdc"

        height: 70
        width: parent.width / 3

        anchors.bottom: parent.bottom
        anchors.left: mini_rect_2.right
        anchors.leftMargin: 8

        Text {
            text: "3"
            font.pointSize: 15
            anchors.centerIn: parent
        }
    }
}

