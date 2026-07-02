local scale = {}

local mt = {}
mt.stretch = {}
mt.stretch.__index = mt.stretch
-- mt.center = {}
-- mt.center.__index = mt.center

function scale.new(mode, w, h, ww, wh)
  assert(mt[mode], "Mode does not exist")
  local t = setmetatable({
    w = w,
    h = h,
    ww = ww,
    wh = wh
  }, mt[mode])
  t.from = {
    x = w/ww,
    y = h/wh
  }
  t.to = {
    x = ww/w,
    y = wh/h
  }
  return t
end

local s = mt.stretch
-- local c = mt.center

function s:fromPixels(x,y)
  return x*self.from["x"], y*self.from["y"]
end

function s:toPixels(x,y)
  return x*self.to["x"], y*self.to["y"]
end

return scale