-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On Feb 22 2018
--
-- To calculate the area of a trapzoid, from gaining input from the user 
-----------------------------------------------------------------------------------------


-- Changing the background colour 
display.setDefault( "background", 1, 1, 1 ) 

-- Displaying textfields
local AOfTrapzoidTextField = native.newTextField( display.contentCenterX - 600, display.contentCenterY - 300, 450, 75 )
AOfTrapzoidTextField.id = "AInputTextfield"

local BOfTrapzoidTextField = native.newTextField( display.contentCenterX - 600, display.contentCenterY - 200, 450, 75 )
BOfTrapzoidTextField.id = "BInputTextfield"

local HeightOfTrapzoidTextField = native.newTextField( display.contentCenterX - 600, display.contentCenterY - 100, 450, 75 )
HeightOfTrapzoidTextField.id = "HeightInputTextField"

-- Adding Text
local areaOFTrapzoidTextfield = display.newText( "Area Of Trapzoid", display.contentCenterX - 500, display.contentCenterY + 300, 550, 150, native.systemFont, 50 )
areaOFTrapzoidTextfield.id = "Area Of Trapzoid TextField"
areaOFTrapzoidTextfield:setFillColor( 0, 1, 0 )

local AInput = display.newText("A", 800, 455, native.systemFont, 75)
AInput:setFillColor( 0, 1, 0 )

local BInput = display.newText("B", 800, 565, native.systemFont, 75)
BInput:setFillColor( 0, 1, 0 )

local heightInput = display.newText("Height", 800, 666, native.systemFont, 75)
heightInput:setFillColor( 0, 1, 0 )

-- Adding Image function button
local calculatlationButton = display.newImageRect("./Assets/sprites/Button.png", 406, 157 )
calculatlationButton.x = display.contentCenterX - 600
calculatlationButton.y = display.contentCenterY + 100
calculatlationButton.id = "Calculate button"

-- Making Function for button
local function calculalationButtonTouch( event )
	-- this function will calculate the area of a trapzoid from user's input
	
	-- Making varibles
	local aOfTrapzoid
	local BOfTrapzoid
	local HeightOfTrapzoid
	local areaOfTrapzoid

	aOfTrapzoid = AOfTrapzoidTextField.text
	BOfTrapzoid = BOfTrapzoidTextField.text
	HeightOfTrapzoid = HeightOfTrapzoidTextField.text
	areaOfTrapzoid = (aOfTrapzoid + BOfTrapzoid) / 2 * HeightOfTrapzoid
	areaOFTrapzoidTextfield.text = "The area of this trapzoid is " ..  areaOfTrapzoid  .. " cm^2"

	return true
end

calculatlationButton:addEventListener( "touch", calculalationButtonTouch )
