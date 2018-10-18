local reactorURL = "https://raw.githubusercontent.com/idolord/dr/master/reactorCommands"
local startupURL = "https://raw.githubusercontent.com/idolord/dr/master/startup.lua"
local reactorIfnoUrl = "https://raw.githubusercontent.com/idolord/dr/master/reactorinfo"
local rebootScript = "https://raw.githubusercontent.com/idolord/dr/master/rebootScript"

local rea, startup, info, reboot
local reactor, startupFile, reactorinfo, rebootSRC

rea = http.get(reactorURL)
reactor = rea.readAll()

local file1 = fs.open("reactorCommands", "w")
file1.write(reactor)
file1.close()

startup = http.get(startupURL)
startupFile = startup.readAll()


local file2 = fs.open("startup", "w")
file2.write(startupFile)
file2.close()

info = http.get(reactorIfnoUrl)
reactorinfo = info.readAll()


local file3 = fs.open("reactorinfo", "w")
file3.write(reactorinfo)
file3.close()

reboot = http.get(rebootScript)
rebootSRC = reboot.readAll()


local file4 = fs.open("rebootScript", "w")
file4.write(rebootSRC)
file4.close()