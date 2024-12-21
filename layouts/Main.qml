import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3
import QtQuick.Window 2.15

Window {
    visible: true
    color: "#f5f5f5"
    title: qsTr("Layout Maket")
    width: 400
    height: 700

    property int myMargin:10
    minimumWidth:cl.implicitWidth+2*myMargin

    ColumnLayout {
        anchors.fill: parent

        RowLayout {
            Comp {
                rectContent: "Header"
            }
        }

        RowLayout {
            Layout.preferredHeight: parent.height * 0.8

            Comp {
                rectColor: "#f5f5f5"; Layout.margins: 15
            }
        }

        RowLayout {
            Comp {
                rectContent: "1"
            }
            Comp {
                rectContent: "2"
            }
            Comp {
                rectContent: "3"
            }
        }
    }
}
