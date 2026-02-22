function onCreate()
	makeLuaSprite('Waves', 'purpbg/purpwave', -2220, -1350);
	scaleObject('Waves', 3, 3)
	addLuaSprite('Waves', false);

	makeLuaSprite('Platform', 'purpbg/purlatform', -1250, -730);
	scaleObject('Platform', 2, 2)
	addLuaSprite('Platform', false);

	makeLuaSprite('Blocks', 'purpbg/purpblocks', -2620, -1450);
	scaleObject('Blocks', 3, 3)
	addLuaSprite('Blocks', false);
end

function onCreatePost()
    addGlitchEffect('Waves', 4, 4);
end

local shadname = "WavyBackgrounds"

function onCreatePost()
	initLuaShader("WavyBackgrounds")
	setSpriteShader('Waves', shadname)
end
	
function onUpdate(elapsed)
	setShaderFloat('Waves', 'uWaveAmplitude', 0.1)
	setShaderFloat('Waves', 'uFrequency', 5)
	setShaderFloat('Waves', 'uSpeed', 2.25)
end

function onUpdatePost(elapsed)
	setShaderFloat('Waves', 'uTime', os.clock())
end

--Do not but closed(true) Otherwise it will freeze the shader!