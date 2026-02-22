function onCreate()
    -- create the sprite from your image
    makeLuaSprite('hudPic', 'ParentalAdvisoryLabel', 0, 0)

    -- ensure it doesn’t move with the camera
    setLuaSpriteScrollFactor('hudPic', 0, 0)

    -- put it on the HUD camera
    setObjectCamera('hudPic', 'hud')

    -- add it behind other HUD elements if needed
    addLuaSprite('hudPic', false)

	setProperty('hudPic.x', 1045)
	setProperty('hudPic.y', 573)

end
