local discordia = require('discordia')
require("discordia-interactions")
local commands = require('Commands')
local json = require('json')
local client = discordia.Client()
local prefix = ";"

local token = require('Token')

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