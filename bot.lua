local discordia = require('discordia')
require("discordia-interactions")
local discordia_commands = require("discordia-slash")
local commands = require('Commands')
local init = require("Init")
local json = require('json')
local client = discordia.Client():useApplicationCommands()

local prefix = ";"

local token = require('Token')

local appid = require("Appid")

client:on('ready', function()
    client:setStatus('dnd')
    client:setGame("Meme idea helper")
	init["create"](appid, discordia, client)
end)

client:on("slashCommand", function(ia, cmd, args)
	if commands[cmd.name] then
		commands[cmd.name](ia)
	end
end)


client:on('messageCreate', function(message)
	local firstchar = string.sub(message.content, 1, 1)
	local noprefix = string.sub(message.content, 2, #message.content)
	if firstchar == prefix then
	if commands[noprefix] then
		commands[noprefix](message)
	end
end
end)

client:run('Bot '.. token)