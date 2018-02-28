-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By: Amin Zeina
-- Created On: Feb 2018
--
-- Calculates the cost of a pizza
-----------------------------------------------------------------------------------------

display.setDefault( "background", 1, 1, 0)

local instruction = display.newText( "Enter the diameter of your pizza:", display.contentCenterX, 200, native.systemFont, 128)
instruction.id = "Instructions"
instruction:setTextColor(1, 0, 0)

local diameterTextField = native.newTextField( 600, 450, 500, 150)
local enterButton = display.newImageRect( "./Assets/Sprites/enterButton.png", 600, 270)
enterButton.x = 1300
enterButton.y = 450
enterButton.id = "Enter Button"

local function onEnterClicked( event )
	local subtotal
	local tax
	local total
	local diameter = diameterTextField.text
	
	-- calculates the subtotal

	subtotal = 0.75 + 1 + (0.5*diameter)
	local subtotalText = display.newText( "Subtotal: $" .. subtotal, 475, 800, native.systemFont, 128)
	subtotalText:setTextColor(0, 1, 0)

	-- calculates the tax
	tax = subtotal * 0.13
	local taxText = display.newText( "Tax: $" .. tax, 415, 1000, native.systemFont, 128)
	taxText:setTextColor(0, 1, 0)

	-- calculates the total
	total = subtotal + tax
	local totalText = display.newText( "Total: $" .. total, 450, 1200, native.systemFont, 128)
	totalText:setTextColor(0, 1, 0)

	return true

end

enterButton:addEventListener( "touch", onEnterClicked )