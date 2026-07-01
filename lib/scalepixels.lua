local scale = {}

local mt = {}
mt.stretch = {}
mt.stretch.__index = mt.stretch
mt.center = {}
mt.center.__index = mt.center

function scale.new(mode, w, h, ww, wh)
  assert(mt[mode], "Mode does not exist")
  return setmetatable({
    w = w,
    h = h,
    ww = ww,
    wh = wh
  }, mt[mode])
end

return scale