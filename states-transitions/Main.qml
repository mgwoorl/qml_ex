import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15

Window {
    visible: true
    color: "#f5f5f5"
    title: qsTr("States Transitions")
    width: 320
    height: 480
    minimumWidth: 400
    minimumHeight: 700

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            My_Component {
                id: header
                comText: "Header"
                Text {
                    id:back
                    text: "Back"
                    font.pixelSize: 12
                    anchors.verticalCenter: parent.verticalCenter;
                    leftPadding: 7;
                    font.bold: true
                    opacity: 0;

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            row_footer.state = ""
                        }
                    }
                }
            }
        }

        RowLayout {
            Layout.preferredHeight: parent.height * 0.8
            My_Component {
                id: content
                comColor: "#f5f5f5"
                Layout.margins: 7
            }
        }

        RowLayout {
            id: row_footer
            state: ""

            My_Component {
                id: btn1
                comText: "1"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (row_footer.state !== "btn1")
                            row_footer.state = "btn1";
                    }
                }
            }

            My_Component {
                id: btn2
                comText: "2"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (row_footer.state !== "btn2")
                            row_footer.state = "btn2";
                    }
                }
            }

            My_Component {
                id: btn3
                comText: "3"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (row_footer.state !== "btn3")
                            row_footer.state = "btn3";
                    }
                }
            }

            states: [
                State {
                    name: "btn1"
                    PropertyChanges { target: btn2; comOpacity: 0.2; }
                    PropertyChanges { target: btn3; comOpacity: 0.2; }
                    PropertyChanges { target: header; comText: "Header 1"; }
                    PropertyChanges { target: content; comText: "Item 1 Content"; }
                },
                State {
                    name: "btn2"
                    PropertyChanges { target: btn1; comOpacity: 0.2; }
                    PropertyChanges { target: btn3; comOpacity: 0.2; }
                    PropertyChanges { target: header; comText: "Header 2";  }
                    PropertyChanges { target: content; comText: "Item 2 Content"; }
                    PropertyChanges { target: back; opacity: 1; }
                },
                State {
                    name: "btn3"
                    PropertyChanges { target: btn1; comOpacity: 0.2; }
                    PropertyChanges { target: btn2; comOpacity: 0.2; }
                    PropertyChanges { target: header; comText: "Header 3"; }
                    PropertyChanges { target: content; comText: "Item 3 Content"; }
                    PropertyChanges { target: back; opacity: 1; }
                }
            ]

            transitions: [
                Transition {
                    PropertyAnimation { properties: "comOpacity"; duration: 300; }
                }
            ]

        }
    }
}
