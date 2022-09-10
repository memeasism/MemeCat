local discordia = require('discordia')
local json = require('json')
local client = discordia.Client()
local prefix = "|"

local person_string
local verb_string


client:on('messageCreate', function(message)
	if message.content == prefix .. 'roll' then
		get_person()
		get_verb()
		message.channel:send(person_string .. " " .. verb_string)
	end
end)

function get_person()
	local people = require("People")
	local person = math.random(1, #People)
	person_string = People[person]
end

function get_verb()
	local verbs = require("Verbs")
	local verb = math.random(1, #verbs)
	verb_string = verbs[verb]
end

local token_file = io.open('./antigit/token')
local token = token_file:read('*a')
token_file:close()

client:run('Bot '.. token)