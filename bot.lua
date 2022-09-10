local discordia = require('discordia')
local json = require('json')
local client = discordia.Client()
local prefix = "|"

local people = require("People")
local what = require("What")

client:on('messageCreate', function(message)
	if message.content == prefix .. 'roll' then
		local person = math.random(1, #People)
		local person_string = People[person]
		message.channel:send(person_string)
	end
end)

local token_file = io.open('./token')
local token = token_file:read('*a')
token_file:close()

client:run('Bot '.. token)
