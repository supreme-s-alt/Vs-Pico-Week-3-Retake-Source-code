--Credits

--First og script Made by Shaggy#3760(Psych Engine server)
--Second script made by BombasticTom#0646 and another unknown guy
--Return to idle after sustain note for bf script made by Unholywanderer04
--Vanilla notes postion and updated ratings in cam scripts by BombasticTom#0084
--Other lua scripts made by Steve The Creeper
--All lua scripts combined + edited by Steve The Creeper

--Options

NoTextBorder = true --Removes the border from the score text like the OG game.

SmolText = true --Makes the text smaller like the OG game.

ScoreOffset = true --Adds the score offset from the OG game.

MinimizedScoreInfo = true --Removes accuracy and misses

HideSongPosition = true --Hides the song position bar.

OGHealthGainAndLoss = true --If you want the health gain n loss to be like og fnf

NoBOTPLAYtext = true -- removes the "BOTPLAY" watermark when botplay is enabled.

--Script stuff

function onCreatePost()
          
  if MinimizedScoreInfo then
   setTextString('scoreTxt', 'Score:'..score) 
  end

  if ScoreOffset then
    setProperty('scoreTxt.x', 280)
  end

  if SmolText then
    scaleObject('scoreTxt', 0.815, 0.815)
  end
 
   if NoTextBorder then
     setTextBorder('scoreTxt', false)
  end

    if OGHealthGainAndLoss then
     setProperty('healthGain', 0.85)
     setProperty('healthLoss', 0.33)
  end

   if NoBOTPLAYtext then
		   setProperty('botplayTxt.visible', false)	
	  end

end

--For after a note has been pressed

function onUpdatePost(e)
  
  if MinimizedScoreInfo then
   setTextString('scoreTxt', 'Score:'..score)
  end

  if ScoreOffset then
    setProperty('scoreTxt.x', 280) 
  end 
   
  if SmolText then
   scaleObject('scoreTxt', 0.815, 0.815)
  end
  
  if NoTextBorder then
   setTextBorder('scoreTxt', false)
  end

    if OGHealthGainAndLoss then
     setProperty('healthGain', 0.85)
     setProperty('healthLoss', 0.33)
  end

end

--Enabling antialiasing (less lag)

function onCreate()
    Anti = getPropertyFromClass('ClientPrefs', 'globalAntialiasing')
    setPropertyFromClass('ClientPrefs','globalAntialiasing',true)
end

function onDestroy()   setPropertyFromClass('ClientPrefs','globalAntialiasing', Anti)
end