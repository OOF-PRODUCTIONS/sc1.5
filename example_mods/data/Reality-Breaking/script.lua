local FillValueX = false;
local FillValueY = false;
local modchartStart = true;
local modchartX = 2;
local modchartY = 5;

local stupidAss = 1;
local DumbAss = 1;

function onCreate()
	setProperty('camHUD.zoom', 5)
	doTweenZoom('beginfrlol', 'camHUD', 1, 10, 'cubeOut')
	setProperty('camHUD.angle', 2)
	local randomIntX = math.random(2, 6)
	local randomIntY = math.random(2, 10)
end

function onUpdate(elasped)
	songPos = getSongPosition()
	local currentBeat = (songPos/100)/(curBpm/70)
	if modchartStart == true then
		noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 + 50 * math.cos((currentBeat+1)), 0.001)
		noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 + 50 * math.cos((currentBeat+2)), 0.001)
		noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 + 50 * math.cos((currentBeat+3)), 0.001)
		noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 + 50 * math.cos((currentBeat+4)), 0.001)
		noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 + 150 * math.sin((currentBeat+1)), 0.004)
		noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 + 150 * math.cos((currentBeat+1)), 0.004)
		noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 + 150 * math.sin((currentBeat+1)), 0.004)
		noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 + 200 * math.cos((currentBeat+1)), 0.004)
	
		noteTweenY('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 - 50 * math.cos((currentBeat+1)), 0.001)
		noteTweenY('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 - 50 * math.cos((currentBeat+2)), 0.001)
		noteTweenY('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 - 50 * math.cos((currentBeat+3)), 0.001)
		noteTweenY('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 - 50 * math.cos((currentBeat+4)), 0.001)
		noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 - 150 * math.sin((currentBeat+1)), 0.004)
		noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 - 150 * math.cos((currentBeat+1)), 0.004)
		noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 - 150 * math.sin((currentBeat+1)), 0.004)
		noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 - 150 * math.cos((currentBeat+1)), 0.004)


		--noteTweenAngle('defaultOpponentStrumY0', 0, defaultOpponentStrumY0 + modchartY * math.cos((currentBeat+1)), 0.001)
		--noteTweenAngle('defaultOpponentStrumY1', 1, defaultOpponentStrumY1 + modchartY * math.cos((currentBeat+2)), 0.002)
		--noteTweenAngle('defaultOpponentStrumY2', 2, defaultOpponentStrumY2 + modchartY * math.cos((currentBeat+3)), 0.003)
		--noteTweenAngle('defaultOpponentStrumY3', 3, defaultOpponentStrumY3 + modchartY * math.cos((currentBeat+4)), 0.004)
		--noteTweenAngle('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 + modchartX * math.sin((currentBeat+1)), 0.001)
		--noteTweenAngle('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 + modchartX * math.cos((currentBeat+2)), 0.002)
		--noteTweenAngle('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 + modchartX * math.sin((currentBeat+3)), 0.003)
	
		--noteTweenAngle('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 + modchartX * math.cos((currentBeat+4)), 0.004)
	end

	if FillValueX == true then
		modchartX = modchartX + 0.1
	end

	if FillValueY == true then
		modchartY = modchartY + 0.1
	end

	if modchartX >= 30 then
		FillValueX = false;
	end

	if modchartY >= 40 then
		FillValueY = false;
	end
	doTweenY('the', 'camHUD', -0 * 30 * math.cos((currentBeat+1)), 0.010)
	doTweenAngle('ooooWtf?', 'camHUD', -2 * 2 * math.sin((currentBeat+1)), 0.005)
end
function onCreate()
	makeLuaSprite('whiteflash', '', -200, -200)
	makeGraphic('whiteflash', 1920, 1080, 'FFFFFF')
	setScrollFactor('whiteflash', 0, 0)
	addLuaSprite('whiteflash',true)
	setProperty('whiteflash.alpha', 0)
  end
  function onEvent(name, value1, value2)
	if name == 'whiteflash' then
	  setProperty('whiteflash.alpha', 1)
	  doTweenAlpha('whiteflashbye', 'whiteflash', 0, 1, 'linear')
	end
  end

function onBeatHit()
	if curBeat == 128 then
		setProperty('whiteflash.alpha', 1)
	end

	if curBeat == 129 then
		doTweenAlpha('whiteflashbye', 'whiteflash', 0, 1, 'linear')
	end
	if curBeat % 2 == 0 then
		stupidAss = -DumbAss;
	else
		stupidAss = DumbAss;
	end

	if curBeat >= 67 then
		cancelTween('beginfrlol')
		doTweenZoom('OhSHIT', 'camGame', 1.2, 2, 'cubeOut')
	end

	if curBeat >= 122 then
		cancelTween('OhSHIT')
		doTweenZoom('OhSHIT2', 'camGame', 0.4, 2, 'quadOut')
	end

	if curBeat >= 124 then
		cancelTween('OhSHIT2')
		cancelTween('beginfrlol')
		doTweenZoom('YourFucked', 'camGame', 2, 0.5, 'quadIn')
	end

	if curBeat >= 126 then
		cancelTween('YourFucked')
		doTweenZoom('YourFucked2', 'camGame', 0.9, 0.5, 'quadOut')
	end

	if curBeat == 128 then
		cancelTween('YourFucked2')
		FillValueX = true;
		FillValueY = true;
	end

	if curBeat >= 512 then
		doTweenZoom('PHEWWW', 'camHUD', 10, 3, 'quadOut')
	end
end


function opponentNoteHit()
	triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
	health = getProperty('health')
	if health > 0.01 then
		setProperty('health', health - 0.01);	
	end
end