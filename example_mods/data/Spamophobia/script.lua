function onUpdate(elapsed)
    if curStep >= 0 then
        songPos = getSongPosition()
        local currentBeat = (songPos/600)*(bpm/90)
        doTweenY(dadTweenY, 'dad', 100-1000*math.sin((currentBeat*0.25)*math.pi),0.00001)
    end
end
 