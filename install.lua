local reactorURL = "https://raw.githubusercontent.com/idolord/dr/master/reactorCommands.lua"
local startupURL = "https://raw.githubusercontent.com/idolord/dr/master/startup.lua"
local reactorIfnoUrl = "https://raw.githubusercontent.com/idolord/dr/master/reactorinfo.lua"
local rebootScript = "https://raw.githubusercontent.com/idolord/dr/master/rebootScript.lua"

local lib, startup
local reactor, startupFile, reactorinfo, rebootSRC

lib = http.get(libURL)
reactor = lib.readAll()

local file1 = fs.open("reactorCommands", "w")
file1.write(reactor)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()

startup = http.get(reactorIfnoUrl)
reactorinfo = startup.readAll()


local file3 = fs.open("reactorinfo", "w")
file2.write(reactorinfo)
file2.close()

startup = http.get(reactorIfnoUrl)
rebootSRC = startup.readAll()


local file4 = fs.open("rebootScript", "w")
file2.write(rebootSRC)
file2.close()