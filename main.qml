import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Controls.Material.impl 2.15
import QtQuick.Controls 6.2
import Qt5Compat.GraphicalEffects

Window {
    width: 640
    height: 480
    visible: true
    color: "#7e00ff"
    title: qsTr("Material Example")
    Material_Button {
        x: 50
        y: 50
        width: 100
        height: 50
        color: "#56ff00"
    }
    Material_Rectangle {
        x: 200
        y: 50
        width: 100
        height: 50
        color: "#56ff00"
    }
    Material_Image {
        x: 50
        y: 150
        width: 300
        height: 250
        source: "file:/home/redbear/Pictures/illust_66908482_20210127_160011.png"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
