local ease = 'circOut'
local time = 0.8
function goodNoteHit(id,dir,nt,sus)
    if not sus and mustHitSection then
        if dir == 0 then
            doTweenAngle('camHUDMoveAngle', 'camGame', -0.4,time, ease)
        elseif dir == 3 then
            doTweenAngle('camHUDMoveAngle', 'camGame', 0.4,time, ease)
        else
            doTweenAngle('camHUDMoveAngle', 'camGame', 0,time, ease)
        end
    end
    runTimer('gobacktodefault',0.4)
end

function opponentNoteHit(id,dir,nt,sus)
    if not sus and not mustHitSection then
        if dir == 0 then
            doTweenAngle('camHUDMoveAngle', 'camGame', -0.4,time, ease)
        elseif dir == 3 then
            doTweenAngle('camHUDMoveAngle', 'camGame', 0.4,time, ease)
        else
            doTweenAngle('camHUDMoveAngle', 'camGame', 0,time, ease)
        end
    end
    runTimer('gobacktodefault',0.4)
end

function onTimerCompleted(t)
    if t == 'gobacktodefault' then
        doTweenAngle('camHUDMoveAngle', 'camGame', 0, time, ease)
    end
end
