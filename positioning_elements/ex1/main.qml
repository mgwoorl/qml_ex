import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 360
    height: 640
    visible: true
    title: qsTr("Dogich")

    Rectangle {
        id: face
        color: "orange"
        width: 200
        height: 150
        anchors.centerIn: parent
    }

    Rectangle {
        id: leftEye
        color: "white"
        width: 50
        height: 20
        anchors.verticalCenter: face.verticalCenter
        anchors.left: face.left
        anchors.leftMargin: 40

        Rectangle {
            id: leftPupil
            color: "black"
            width: 40
            height: 20
            anchors.centerIn: parent

            Rectangle {
                id: zrachleft
                color: "brown"
                width: 18
                height: 18
                anchors.centerIn: parent
            }
        }
    }

    Rectangle {
        id: rightEye
        color: "white"
        width: 50
        height: 20
        anchors.verticalCenter: face.verticalCenter
        anchors.right: face.right
        anchors.rightMargin: 40

        Rectangle {
            id: rightPupil
            color: "black"
            width: 40
            height: 20
            anchors.centerIn: parent

            Rectangle {
                id: zrachright
                color: "brown"
                width: 18
                height: 18
                anchors.centerIn: parent
            }
        }
    }

    Rectangle {
        id: nose
        color: "black"
        width: 30
        height: 20
        anchors.horizontalCenter: face.horizontalCenter
        anchors.top: leftEye.bottom
        anchors.topMargin: 10
    }

    Rectangle {
        id: mouth
        color: "black"
        width: 70
        height: 5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: nose.bottom
        anchors.topMargin: 10

        Rectangle {
            id: tongue
            color: "#FF7D73"
            width: 30
            height: 20
            anchors.right: parent.right
            anchors.top: parent.bottom

            Rectangle {
                id: line
                color: "#FF4E40"
                width: 3
                height: 15
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
            }
        }
    }

    Rectangle {
        id: leftear
        color: "orange"
        width: 50
        height: 30
        anchors.bottom: face.top
        anchors.left: face.left
    }

    Rectangle {
        id: rightear
        color: "orange"
        width: 50
        height: 30
        anchors.bottom: face.top
        anchors.right: face.right
    }

    Rectangle {
        id: leftear_second
        color: "brown"
        width: 50
        height: 20
        anchors.bottom: leftear.top
        anchors.left: leftear.left
    }

    Rectangle {
        id: rightear_second
        color: "orange"
        width: 50
        height: 20
        anchors.bottom: rightear.top
        anchors.right: rightear.right
    }

    Rectangle {
        id: leftbrow
        color: "brown"
        width: 30
        height: 15
        anchors.bottom: leftEye.top
        anchors.left: leftEye.horizontalCenter
        anchors.bottomMargin: 4
    }

    Rectangle {
        id: rightbrow
        color: "brown"
        width: 30
        height: 15
        anchors.bottom: rightEye.top
        anchors.right: rightEye.horizontalCenter
        anchors.bottomMargin: 4
    }

    Rectangle {
        id: body
        color: "orange"
        width: 150
        height: 150
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: face.bottom

        Rectangle {
            id: spot
            color: "white"
            width: 70
            height: 90
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
        }

        Rectangle {
            id: paw_left
            color: "orange"
            width: 40
            height: 40
            anchors.left: parent.left
            anchors.top: parent.bottom

            Rectangle {
                id: paw_back_part_left
                color: "#A64B00"
                width: 10
                height: 35
                anchors.left: parent.right
                anchors.top: body.bottom
            }
        }

        Rectangle {
            id: paw_right
            color: "orange"
            width: 40
            height: 30
            anchors.right: parent.right
            anchors.top: parent.bottom

            Rectangle {
                id: paw_right_spot
                color: "brown"
                width: 40
                height: 10
                anchors.left: parent.left
                anchors.top: parent.bottom
            }

            Rectangle {
                id: paw_back_part_right
                color: "#A64B00"
                width: 10
                height: 35
                anchors.right: parent.left
                anchors.top: body.bottom
            }
        }

        Rectangle {
            id: paw_zad_left
            color: "#A64B00"
            width: 50
            height: 35
            anchors.right: parent.left
            anchors.top: parent.bottom
        }

        Rectangle {
            id: paw_zad_right
            color: "#A64B00"
            width: 50
            height: 35
            anchors.left: parent.right
            anchors.top: parent.bottom
        }

        Rectangle {
            id: tail
            color: "orange"
            width: 30
            height: 35
            anchors.left: parent.right
            anchors.bottom: paw_zad_right.top
            anchors.bottomMargin: 10

            Rectangle {
                id: tail_end
                color: "orange"
                width: 30
                height: 35
                anchors.left: parent.right
                anchors.bottom: parent.top
            }
        }
    }
}

