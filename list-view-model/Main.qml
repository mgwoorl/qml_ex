import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 360;
    height: 640;
    visible: true;
    title: qsTr("List_view_model");
    property int defMargin: 8;

    Page{
        id:page;
        anchors.fill:parent;
        Rectangle {
            width: parent.width
            height: parent.height
            gradient:Gradient{
                GradientStop{position:0;color:"#a995d6"}
                GradientStop{position:1;color:"#e9593f"}
            }
        }

        ListView{
            id: my_list;
            anchors.fill:parent;
            model:my_model;
            delegate: MyDelegate{
                username: model.username;
                content:  model.content;
                time: model.time;
            }
        }

        ListModel {
            id: my_model;
            ListElement { username: "Марио"; content: "Приветик"; time: "00:00"; }
        }

        footer: PageFooter {
            onNewMessage: {
                var newMsg = {};
                newMsg.content = msg;
                newMsg.username = "Unknown";
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }
    }
}
