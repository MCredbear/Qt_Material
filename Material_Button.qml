import QtQuick 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Controls.Material.impl 2.15
import QtQuick.Controls 6.2
import Qt5Compat.GraphicalEffects

Button {
    id: control
    property color color
    property double radius: 4
    property int elevation: 8
    property bool roundLeftTop: true
    property bool roundRightTop: true
    property bool roundLeftBottom: true
    property bool roundRightBottomr: true
    implicitWidth: 100
    implicitHeight: 50
    topInset: 0
    bottomInset: 0
    background: Rectangle {
        id: controlBackground
        color: control.color
        radius: control.radius
        Rectangle {
            anchors.left: parent.left
            anchors.top: parent.top
            visible: !control.roundLeftTop
            width: control.radius * 2
            height: control.radius * 2
            color: control.color
        }
        Rectangle {
            anchors.right: parent.right
            anchors.top: parent.top
            visible: !control.roundRightTop
            width: control.radius * 2
            height: control.radius * 2
            color: control.color
        }
        Rectangle {
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            visible: !control.roundLeftBottom
            width: control.radius * 2
            height: control.radius * 2
            color: control.color
        }
        Rectangle {
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            visible: !control.roundRightBottomr
            width: control.radius * 2
            height: control.radius * 2
            color: control.color
        }

        layer.enabled: true
        layer.effect: ElevationEffect {
            elevation: control.elevation
        }
        Ripple {
            clipRadius: control.radius
            width: parent.width
            height: parent.height
            pressed: control.pressed
            anchor: control
            active: control.down || control.visualFocus || control.hovered
            color: "#0e000000"
            layer.enabled: true
            layer.effect: OpacityMask {
                maskSource: Rectangle {
                    width: controlBackground.width
                    height: controlBackground.height
                    radius: control.radius
                    Rectangle {
                        anchors.left: parent.left
                        anchors.top: parent.top
                        visible: !control.roundLeftTop
                        width: control.radius * 2
                        height: control.radius * 2
                    }
                    Rectangle {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        visible: !control.roundRightTop
                        width: control.radius * 2
                        height: control.radius * 2
                    }
                    Rectangle {
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        visible: !control.roundLeftBottom
                        width: control.radius * 2
                        height: control.radius * 2
                    }
                    Rectangle {
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        visible: !control.roundRightBottomr
                        width: control.radius * 2
                        height: control.radius * 2
                    }
                }
            }
        }
    }
}
