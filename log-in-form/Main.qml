import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    width: 400
    height: 700
    title: "Log in"

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#f5f5f5"

        Column {
            anchors.centerIn: parent
            spacing: 16

            TextField {
                id: usernameField
                placeholderText: "Username"
                width: 240
                height: 40
                font.pixelSize: 16
                leftPadding: 7
                verticalAlignment: TextInput.AlignVCenter
            }

            TextField {
                id: passwordField
                placeholderText: "Password"
                width: 240
                height: 40
                font.pixelSize: 16
                echoMode: TextInput.Password
                leftPadding: 7
                verticalAlignment: TextInput.AlignVCenter
            }

            Row {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    text: "Log In"
                    width: 120
                    height: 40
                    font.pixelSize: 16

                    background: Rectangle {
                        color: "#e0e0e0"
                        radius: 5
                    }
                }

                Button {
                    text: "Clear"
                    width: 120
                    height: 40
                    font.pixelSize: 16

                    background: Rectangle {
                        color: "#f5f5f5"
                        radius: 5
                    }

                    onClicked: {
                        usernameField.text = ""
                        passwordField.text = ""
                    }
                }
            }
        }
    }
}
