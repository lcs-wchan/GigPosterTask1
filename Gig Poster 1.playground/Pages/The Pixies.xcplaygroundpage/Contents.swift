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
        canvas.drawEllipse
    }
}







PlaygroundPage.current.liveView = canvas

