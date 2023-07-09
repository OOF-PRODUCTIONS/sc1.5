function onUpdate(elapsed)
    if curStep >= 0 then
      songPos = getSongPosition()
      local currentBeat = (songPos/1000)*(bpm/130)
      doTweenY(dadTweenY, 'dad', 10*10*math.sin((currentBeat*0.35)*math.pi),0.01)
    end
  end
  