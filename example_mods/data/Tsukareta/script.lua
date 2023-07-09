function onStartCountdown()
    setProperty('dad.alpha', 0)
    setProperty('iconP2.alpha', 0);
    doTweenZoom('hegone', 'camGame', 1.4, 1, 'cubeOut')
    doTweenAlpha('nomorehud', 'camHUD', 0, 2, 'quadOut')
end

   local switched = false
function onTimerCompleted()
  if tag == 'heexists' then
		setProperty('dad.alpha', 1)
    setProperty('iconP2.alpha', 1);
    doTweenZoom('hegone', 'camGame', 1.4, 1, 'cubeOut')
    doTweenAlpha('nomorehud', 'camHUD', 0, 2, 'quadOut')
	end
end
function onCreate()

end
function onUpdate(elapsed)

  if curStep >= 255 then
   songPos = getSongPosition()
   local currentBeat = (songPos/1000)*(bpm/50)
   doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
   local spinAround = ((screenWidth / 2.5) - (20 / 2)) + (math.cos((currentBeat * 0.5) + 0) * 400)
   local spinAroundP2 = ((screenWidth / 2.5) - (20 / 2)) + (math.cos((currentBeat * 0.5) + 0) * -400)
    noteTweenX('defaultPlayerStrumX0', 4, ((spinAround + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * 150), 0.001)
    noteTweenY('defaultPlayerStrumY0', 4, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * 150), 0.001)
    noteTweenX('defaultPlayerStrumX1', 5, ((spinAround + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * 50), 0.001)
    noteTweenY('defaultPlayerStrumY1', 5, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * 50), 0.001)
    noteTweenX('defaultPlayerStrumX2', 6, ((spinAround + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * -50), 0.001)
    noteTweenY('defaultPlayerStrumY2', 6, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * -50), 0.001)
    noteTweenX('defaultPlayerStrumX3', 7, ((spinAround + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * -150), 0.001)
    noteTweenY('defaultPlayerStrumY3', 7, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * -150), 0.001)

    
    noteTweenX('defaultPlayerStrumX0o', 0, ((spinAroundP2 + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * 150), 0.001)
    noteTweenY('defaultPlayerStrumY0o', 0, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * 150), 0.001)
    noteTweenX('defaultPlayerStrumX1o', 1, ((spinAroundP2 + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * 50), 0.001)
    noteTweenY('defaultPlayerStrumY1o', 1, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * 50), 0.001)
    noteTweenX('defaultPlayerStrumX2o', 2, ((spinAroundP2 + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * -50), 0.001)
    noteTweenY('defaultPlayerStrumY2o', 2, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * -50), 0.001)
    noteTweenX('defaultPlayerStrumX3o', 3, ((spinAroundP2 + 105) - (20 / 2)) + (math.sin((currentBeat * 1) + 0) * -150), 0.001)
    noteTweenY('defaultPlayerStrumY3o', 3, ((screenHeight / 2.5) - (20 / 2)) + (math.cos((currentBeat * 1) + 0) * -150), 0.001)
 end
end
function onBeatHit()
    if switched == false then 
      noteTweenScaleX('scale4', 4, 0.5, 0.001)
      noteTweenScaleY('scaley4', 4, 0.5, 0.001)
      noteTweenScaleX('scale5', 5, 0.5, 0.001)
      noteTweenScaleY('scaley5', 5, 0.5, 0.001)
      noteTweenScaleX('scale6', 6, 0.5, 0.001)
      noteTweenScaleY('scaley6', 6, 0.5, 0.001)
      noteTweenScaleX('scale7', 7, 0.5, 0.001)
      noteTweenScaleY('scaley7', 7, 0.5, 0.001)
      noteTweenScaleX('oscale4', 0, 0.5, 0.001)
      noteTweenScaleY('oscaley4', 0, 0.5, 0.001)
      noteTweenScaleX('oscale5', 1, 0.5, 0.001)
      noteTweenScaleY('oscaley5', 1, 0.5, 0.001)
      noteTweenScaleX('oscale6', 2, 0.5, 0.001)
      noteTweenScaleY('oscaley6', 2, 0.5, 0.001)
      noteTweenScaleX('oscale7', 3, 0.5, 0.001)
      noteTweenScaleY('oscaley7', 3, 0.5, 0.001)
      switched = true
    else if switched == true then
      noteTweenScaleX('scale4', 4, 0.7, 0.001)
      noteTweenScaleY('scaley4', 4, 0.7, 0.001)
      noteTweenScaleX('scale5', 5, 0.7, 0.001)
      noteTweenScaleY('scaley5', 5, 0.7, 0.001)
      noteTweenScaleX('scale6', 6, 0.7, 0.001)
      noteTweenScaleY('scaley6', 6, 0.7, 0.001)
      noteTweenScaleX('scale7', 7, 0.7, 0.001)
      noteTweenScaleY('scaley7', 7, 0.7, 0.001)
      noteTweenScaleX('oscale4', 0, 0.7, 0.001)
      noteTweenScaleY('oscaley4', 0, 0.7, 0.001)
      noteTweenScaleX('oscale5', 1, 0.7, 0.001)
      noteTweenScaleY('oscaley5', 1, 0.7, 0.001)
      noteTweenScaleX('oscale6', 2, 0.7, 0.001)
      noteTweenScaleY('oscaley6', 2, 0.7, 0.001)
      noteTweenScaleX('oscale7', 3, 0.7, 0.001)
      noteTweenScaleY('oscaley7', 3, 0.7, 0.001)
      switched = false
    end
    end
  if curBeat >= 64 then
      doTweenZoom('westarting', 'camGame', 0.7, 1, 'quadOut')
      doTweenAlpha('itsback', 'camHUD', 1, 2, 'quadOut')
  end

  if curBeat >= 192 then
    cancelTween('westarting')
    doTweenZoom('spam', 'camGame', 0.6, 1, 'quadOut')
    doTweenAlpha('dontleavehud', 'camHUD', 1, 2, 'quadOut')
  end
end