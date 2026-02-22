function onCreate()
        makeLuaSprite('bg', 'bg', 500, 750);
        scaleObject('bg', 850, 750);
        setLuaSpriteScrollFactor('bg', 0, 0);
        addLuaSprite('bg', false);

        initLuaShader("galaxy")
        setSpriteShader("bg", "galaxy")
end

function onUpdate(elapsed)
        setShaderFloat('bg', 'iTime', os.clock())
end