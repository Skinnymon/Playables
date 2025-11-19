function onCreate()
    makeLuaSprite('corr-mountain', 'corr-mountain', -1470, -750);
    addLuaSprite('corr-mountain');
    scaleObject('corr-mountain', 1.2, 1.2);

    makeLuaSprite('corr-grass', 'corr-grass', -1470, -1550);
    addLuaSprite('corr-grass');
    scaleObject('corr-grass', 1.2, 1.2);
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.015);
    end
end