function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
	noteTweenX(defaultPlayerStrumX3, 4, defaultPlayerStrumX3 - 330 + 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
	noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 - 330 + 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
	noteTweenX(defaultPlayerStrumX0, 6, defaultPlayerStrumX0 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	noteTweenX(defaultPlayerStrumX2, 7, defaultPlayerStrumX2 - 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)

	noteTweenX(defaultOpponentStrumX3, 0, defaultOpponentStrumX3 + 330 - 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
	noteTweenX(defaultOpponentStrumX1, 1, defaultOpponentStrumX1 + 330 - 1500*math.sin((currentBeat+8*0.25)*math.pi), 3)
	noteTweenX(defaultOpponentStrumX0, 2, defaultOpponentStrumX0 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	noteTweenX(defaultOpponentStrumX2, 3, defaultOpponentStrumX2 + 50*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
	doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
end

function opponentNoteHit()
	health = getProperty('health')
	if health > 0.02 then
		setProperty('health', health - 0.02);	
	end
end