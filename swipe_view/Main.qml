import QtQuick
import QtQuick.Controls

Window {
    visible: true
    color: "#f5f5f5"
    title: qsTr("Swipe View")
    width: 320
    height: 480

    SwipeView{
        interactive: SwipeView.ForceElasticity
        id: view
        currentIndex: 1
        anchors.fill: parent

        Page {
            id: page1
            background: Rectangle{
                id: backgr1
                color: "red"
            }
        }

        Page {
            id: page2

            background: Rectangle{
                id: backgr2
                color: "yellow"
            }
        }

        Page {
            id: page3

            background: Rectangle{
                id: backgr3
                color: "green"
            }
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
