//: # Gig Poster 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)

// Begin your solution here...


/*:
 ## Use Source Control
 
 Remember to commit and push your work before 11:30 AM on Monday, January 13, 2020, please.
 
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
// draw green background
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = limeGreen
canvas.drawRectangle(at:Point(x:0, y:0), width: 400, height: 600, anchoredBy: AnchorPosition.bottomLeft, borderWidth: 0)

// loop for black circle
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false

for x in stride (from:0, through: 400, by: 40){
    for y in stride (from:0, through:400, by: 40){
        canvas.drawEllipse(at: Point(x:x, y:y), width: 40, height: 40, borderWidth: 5)
    }
}

// draw green background
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = limeGreen
canvas.drawRectangle(at:Point(x:0, y:400), width: 400, height: 200, anchoredBy: AnchorPosition.bottomLeft, borderWidth: 0)

//draw white circles
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
for y in stride (from: 40, through: 360, by: 40){
    for x in stride (from:40, through:360, by:40){
        canvas.drawEllipse(at: Point(x:x, y:y), width: 35, height: 35)
        canvas.fillColor = offWhite
    }
}


// text
// type text satudray
canvas.drawText(message: "saturday", at: Point(x:17, y:555), size: 10, kerning: 0.0)

// type text december 13 1986
canvas.drawText(message: "december 13 1986", at: Point(x:17, y:540), size: 10, kerning: 0.0)

// type text 9 pm over
canvas.drawText(message: "9 pm over 21", at: Point(x:17, y:525), size: 10, kerning: 0.0)

// type text at the rat
canvas.drawText(message: "at the rat", at: Point(x:275, y:555), size: 10, kerning: 0.0)

// type text 528 comonwealth,
canvas.drawText(message: "528 commonwealth", at: Point(x:275, y:540), size: 10, kerning: 0.0)

// type text boston, mass
canvas.drawText(message: "boston, mass", at: Point(x:275, y:525), size: 10, kerning: 0.0)

// type text pixies
canvas.drawText(message: "pixies", at: Point(x:17, y:425), size: 68, kerning: 0.0)

canvas.textColor = offWhite
// type text with
canvas.drawText(message: "with", at: Point(x:275, y:460), size: 10, kerning: 0.0)

// type text throwing muses
canvas.drawText(message: "throwing muses", at: Point(x:275, y: 445), size: 10, kerning: 0.0)

// type text big dipper
canvas.drawText(message: "big dipper", at: Point(x:275, y:430), size: 10, kerning: 0.0)




PlaygroundPage.current.liveView = canvas

