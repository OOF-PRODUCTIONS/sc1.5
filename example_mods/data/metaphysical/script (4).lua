
function onUpdate(elapsed)
  if curStep >= 0 then
   
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/200)
    doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.50)*math.pi),0.01)
  end
  if curStep == 1 then
                
    noteTweenX("x1",0,600,2.5,"backinOut");
    noteTweenY ("GRR",0,380,2.5,"quadinOut");
 
    noteTweenX("x2",1,600,2.5,"backinOut");
    noteTweenY("heheheha",1,380,2.5,"quadinOut");
 
  
    noteTweenX("x3",2,600,2.5,"backinOut");
    noteTweenY("thehehe",2,380,2.5,"quadinOut");
   


    noteTweenX("x4",3,600,2.5,"backinOut");
    noteTweenY("theja",3,380,2.5,"quadinOut");
  
   

    noteTweenX("x5",4,650,2.5,"quadinOut");
   noteTweenY("thej",4,325,2.5,"quadinOut");
   


    noteTweenX("x6",5,550,2.5,"quadinOut");
    noteTweenY ("y6",5,325,2.5,"quadinOut");
   

    noteTweenX("x7",6,650,2.5,"quadinOut");
    noteTweenY("y7",6,450,2.5,"quadinOut");
   

    noteTweenX("x8",7,550,2.5,"quadinOut");
    noteTweenY("y8",7,450,2.5,"quadinOut");
   
  end


end

function opponentNoteHit(id, direction, noteType, isSustainNote)
  cameraShake(game, 0.009, 0.1)
  cameraSetTarget('dad')
  health = getProperty('health')
	if health > 0.01 then
		setProperty('health', health - 0.001);	
	end
end
function goodNoteHit() 
  health = getProperty('health')  
  if health > 0 then
  setProperty('health', health + 0.0765);	
end
end