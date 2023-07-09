local thing = 2
local bop = 1;
local bop2 = 1;
local anglePlus = 1;
local defaultNotePos = {};
local spin = false;
local modchartX = 40;
local modchartY = 60;

function onSongStart()
  for i = 0,7 do 
      x = getPropertyFromGroup('strumLineNotes', i, 'x')

      y = getPropertyFromGroup('strumLineNotes', i, 'y')

      table.insert(defaultNotePos, {x,y})
  end
end

function onUpdate(elapsed)
  if curStep >= 0 then
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/130)
    doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
  end
  songPos = getPropertyFromClass('Conductor', 'songPosition');
 
  currentBeat = (songPos / 1000) * (bpm / 60)

  if spin == true then 
      for i = 0,7 do 
          setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + modchartX * math.sin((currentBeat + i*0.25) * math.pi))
          setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + modchartY * math.cos((currentBeat + i*0.25) * math.pi))
      end
  end
end

function opponentNoteHit()
	triggerEvent('Screen Shake', '0.1, 0.02', '0.1, 0.02');
  triggerEvent('Add Camera Zoom', '0.01, 0.01', '0, 0');
    health = getProperty('health')
 if getProperty('health') > 0.80 then
    setProperty('health', health- 0.03);
end
end

function onBeatHit()
  if curBeat % 2 == 0 then
		bop = -bop2;
	else
		bop = bop2;
  end
  
    anglePlus = bop*40;

    for i = 0,7 do
      setPropertyFromGroup('strumLineNotes', i, 'angle', anglePlus)
    end

  if curBeat >= 191 then
		thing = thing * -1
    spin = true
		doTweenAngle('rotate', 'camHUD', thing * 3, crochet / 1000, 'quadInOut')
  end  

  if curBeat >= 256 then
    spin = false
    doTweenAngle('rotate', 'camHUD', 0, crochet / 1000, 'quadOut') 
  end

  if curBeat >= 384 then
		thing = thing * -1
    spin = true
		doTweenAngle('rotate', 'camHUD', thing * 3, crochet / 1000, 'quadInOut')
  end  

  if curBeat >= 448 then
    spin = false
    bop = false
    bop2 = false
    doTweenAlpha('chapter3end', 'camHUD', 0, 2, 'quadOut')
    doTweenAngle('rotate', 'camHUD', 0, crochet / 1000, 'quadOut') 
  end
end