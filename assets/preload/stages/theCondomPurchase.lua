function onCreatePost()
    --doTweenColor('bfColorTween', 'boyfriend', 'A7B0EB', 0.00001, 'linear')
    --doTweenColor('dadColorTween', 'dad', 'A7B0EB', 0.00001, 'linear')
    scaleObject('gf', 0.0000000001, 0.0000000001)

    makeAnimatedLuaSprite('music', 'radio', 180, 505)
    setLuaSpriteScrollFactor('music', 1, 1)
    --scaleObject('music', 1.3, 1.3)

    makeLuaSprite('table', 'counter', -480, 790)
    setLuaSpriteScrollFactor('table', 1, 1)
    scaleObject('table', 1, 1.1)

    makeLuaSprite('gradient', 'gradient', -485, 230)
    setLuaSpriteScrollFactor('gradient', 1, 1)
    scaleObject('gradient', 1.35, 1.35)

    makeLuaSprite('bulletin', 'bg_bulletin', -415, 180)
    setLuaSpriteScrollFactor('bulletin', 1, 1)
    scaleObject('bulletin', 1.15, 1.15)

    makeLuaSprite('colon', 'the_table_colon', 150, 710)
    setLuaSpriteScrollFactor('colon', 1, 1)

    makeAnimatedLuaSprite('first', 'you_sing_first', 120, 530)
    setLuaSpriteScrollFactor('first', 1, 1)
    addAnimationByPrefix('first', 'play', 'you sing first 2', 24, false)

    addLuaSprite('gradient', false)
    addLuaSprite('music', false)
    addLuaSprite('table', true)
    addLuaSprite('bulletin', false)
    addLuaSprite('colon', false)
    addLuaSprite('first', true)
    --close(true);

    setObjectOrder('table', getObjectOrder('boyfriendGroup') - 1)
    setObjectOrder('dadGroup', getObjectOrder('table') - 1)
    setObjectOrder('back', getObjectOrder('dadGroup') - 1)
    setObjectOrder('music', getObjectOrder('bulletin') + 1)

    addAnimationByPrefix('music', 'play', 'radio', 24, true)
    objectPlayAnimation('music', 'play', true)
    objectPlayAnimation('first', 'play', true)
end