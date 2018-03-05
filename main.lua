-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables to this entire file
local scrollSpeed = 4

-- background image with width and height
local backgroundImage = display.newImageRect("./assets/textures/background.png", 2048, 1536)
backgroundImage.x = display.contentCenterX
backgroundImage.y = display.contentCenterY
backgroundImage.ID = "night background image"

local Bush = display.newImageRect("./assets/sprites/Bush.png", 193, 210)
Bush.x = 0
Bush.y = display.contentHeight - 200
Bush.ID = "Bush"
Bush.alpha = 1.0
-- character image with width and height
local mushroom = display.newImageRect("./assets/sprites/mushroom.png", 193, 210)
mushroom.y = 0
mushroom.x = display.contentHeight - 200 -- note I am using not the center but the height of the diaplay
mushroom.ID = "mushroom"
mushroom.alpha = 1.5

local function MoveImage(event)
	-- add the scroll speed to the y-value of the image
	Bush.x = Bush.x + scrollSpeed
	Bush.alpha = Bush.alpha + 0.00000000000001

    mushroom.y = mushroom.y + scrollSpeed
    mushroom.alpha = mushroom.alpha - 0.001
    print( display.fps )  -- note this displays how fast the current refresh is
end

-- MoveShip will be called at program start over and over (60 frames or times per second)
Runtime:addEventListener("enterFrame", MoveImage)
