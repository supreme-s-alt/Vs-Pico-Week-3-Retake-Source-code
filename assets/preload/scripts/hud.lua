function onCreatePost()
    setProperty('scoreTxt.visible', true)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('scoreTxt.visible', true);
    setHealthBarColors('FF0000', '66FF33')

   makeLuaText('luaScoreTxt', 'Score:0', 0, getProperty('healthBarBG.x') + getProperty('healthBarBG.width') - 190, getProperty('healthBarBG.y') + 30);
    setTextSize('luaScoreTxt', 16);
    setTextBorder('luaScoreTxt', 1, '000000');
    addLuaText('luaScoreTxt');
end
function onUpdateScore()
    setTextString('luaScoreTxt', 'Score:'..score);
end
