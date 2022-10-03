local discordia = require("discordia")
require("discordia-interactions")
local discordia_commands = require("discordia-slash")
local commands = require('Commands')
local init = require("Init")
local json = require("json")
local client = discordia.Client():useApplicationCommands()

local prefix = ";"

local token = require('Token')

local appid = require("Appid")

client:on("ready", function()
    client:setStatus("dnd")
    client:setGame("Generating Meme ideas")
	init["create"](appid, discordia, client)
end)

client:on("slashCommand", function(command_response, command)
	if commands[command.name] then
		commands[command.name](command_response)
	end
end)

client:run("Bot ".. token)