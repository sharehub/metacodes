local modname = "..."
local md = {}
local _G = _G
package.loaded[modname] = md

-- We also could use _VERSION to check, let's use simple way
if type(setfenv) == "function" then
  setfenv(1, md)
else
  _ENV = md
end

--[[
  1. all module's variable that not defined by 'local' is global
  2. do ... end does not help in define a scope
  3. function help int define a scope
--]]

-- do

mod1_var = "Hello, it should be local"

function func1_var ()
  mod1_fun_var = "This is a function var"
  print("hello, funct1_var is called")
end

local function func2_var ()
  print("private function here")
end

-- end

return md

