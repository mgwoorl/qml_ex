import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3

Rectangle {
    id: rectangle1

    property alias rectColor: rectangle1.color
    property alias rectContent: text_content1.text

    color: "#dcdcdc"
    border.color: "#cbcbcb"

    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.minimumHeight: 70

    Layout.preferredHeight: parent.height * 0.1

    Text {
        id: text_content1
        text: "Content"
        font.pointSize: 15
        anchors.centerIn: parent
    }
}
