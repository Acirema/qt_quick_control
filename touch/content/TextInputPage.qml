/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.1
import QtQuick.Layouts 1.3

Item {
    width: parent.width
    height: parent.height

    property real progress: 0

    SequentialAnimation on progress {
        loops: Animation.Infinite
        running: true
       
	 NumberAnimation {
            from: 0
            to: 1
            duration: 3000
        }
        NumberAnimation {
            from: 1
            to: 0
            duration: 3000
        }
    }

    Column {
        spacing: 20
        //anchors.centerIn: parent
	
	
/*	Slider{
	//	anchors.margin:20
                value:0
                style:touchStyle_Slider
	}
 */     
      GridLayout{
	id:gridLayout
	rows:5
	flow: GridLayout.TopToBottom
	//anchors.fill:parent

	Label {text:"ADDRESS"
		 color: "#FFF"
 		}
	Label { text:"RED"
		color: "#F00"
		}

	Label { text:"BLUE"
		 color: "#00F"
		}
	Label { text:"GREEN"
		 color: "#0F0"
		}

	Label { text:"INTENSITY"
		 color: "#0FF"
		}

	TextField {
            	anchors.margins: 20
            	text: "Address"
            	style: touchStyle_Text
           	width: parent.width/2 - 2
            	height: 20
           
        	}
		
	Slider {
//		anchors.margin:20
		value:0
		style:touchStyle_Slider
	}

	Slider {
//              anchors.margin:20
                value:0
                style:touchStyle_Slider
        }

	Slider {
//              anchors.margin:20
                value:0
                style:touchStyle_Slider
        }


/*	TextField {
            anchors.margins: 20
            text: "RED"
            style: touchStyle_Text
	    width: parent.width/2

        }


        TextField {
            anchors.margins: 20
            text: "GREEN"
            style: touchStyle_Text
        	}
*/	 
        Slider {
  //              anchors.margin:20
                value:0
                style:touchStyle_Slider
        }
	
/*	TextField {
            	anchors.margins: 20
            	text: "BLUE"
            	style: touchStyle_Text
        	}

   	     TextField {
        	anchors.margins: 20
            	text: "INTENSITY"
            	style: touchStyle_Text
            	readOnly: true
        	}
 */	
	}   	


    }
  
  

 


    Component {
        id: touchStyle_Text

        TextFieldStyle {
            textColor: "white"
            font.pixelSize: 28
            background: Item {
                implicitHeight: 50
                implicitWidth: 320
                BorderImage {
                    source: "../images/textinput.png"
                    border.left: 8
                    border.right: 8
                    anchors.bottom: parent.bottom
                    anchors.left: parent.left
                    anchors.right: parent.right
                }
            }
        }
    }

   Component {
        id: touchStyle_Slider
        SliderStyle {
            handle: Rectangle {
                width: 30
                height: 30
                radius: height
                antialiasing: true
                color: Qt.lighter("#468bb7", 1.2)
            }

            groove: Item {
                implicitHeight: 50
                implicitWidth: 400
                Rectangle {
                    height: 8
                    width: parent.width
                    anchors.verticalCenter: parent.verticalCenter
                    color: "#444"
                    opacity: 0.8
                    Rectangle {
                        antialiasing: true
                        radius: 1
                        color: "#468bb7"
                        height: parent.height
                        width: parent.width * control.value / control.maximumValue
                    }
                }
            }
        }
    }

}
