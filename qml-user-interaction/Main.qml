import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15

Window {
    visible: true
    color: "#f5f5f5"
    title: qsTr("User Interaction")
    width: 400
    height: 700

    property int myMargin:10
    minimumWidth:cl.implicitWidth+2*myMargin

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            Comp {
                id: header
                rectContent: "Header"
            }
        }

        RowLayout {
            Layout.preferredHeight: parent.height * 0.8

            Comp {
                id: main

                rectColor: "#f5f5f5";
                Layout.margins: 15
            }
        }

        RowLayout {
            Comp {
                id: button1
                rectContent: "1"

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        header.rectContent = "Header 1"
                        main.rectContent = "Item 1 content"

                        button1.opacity = 1
                        button2.opacity = 0.2
                        button3.opacity = 0.2
                    }
                }
            }

            Comp {
                id: button2
                rectContent: "2"

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        header.rectContent = "Header 2"
                        main.rectContent = "Item 2 content"

                        button1.opacity = 0.2
                        button2.opacity = 1
                        button3.opacity = 0.2
                    }
                }
            }

            Comp {
                id: button3
                rectContent: "3"

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        header.rectContent = "Header 3"
                        main.rectContent = "Item 3 content"

                        button1.opacity = 0.2
                        button2.opacity = 0.2
                        button3.opacity = 1
                    }
                }
            }
        }
    }
}
