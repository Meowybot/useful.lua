local timer

local mt = {
  timer = {},
  sequence = {},
  tween = {}
}

mt.timer.__index = mt.timer
mt.sequence.__index = mt.sequence
mt.tween.__index = mt.tween

function timer.newTimer(time, after, isLoop)
  return setmetatable({
    curTime = 0,
    time = time or 1,
    after = after or function() end,
    isLoop = isLoop or false
  }, mt.timer)
end

function timer.newSequence()
end

function timer.newTween()
end

return timer