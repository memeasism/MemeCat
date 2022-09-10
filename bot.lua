local discordia = require('discordia')
require("discordia-interactions")
local commands = require('Commands')
local json = require('json')
local client = discordia.Client()
local prefix = ":"

local token = require('Token')

client:on('messageCreate', function(message)
	if message.content == prefix .. 'roll' then
		commands.roll(message)
	end
end)

client:run('Bot '.. token)