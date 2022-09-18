local person_string
local verb_string
local action_string

Commands = {
	test = function (message)
		message:reply("believe me now?")
	end,
roll = function(message)
    get_all()
	message:reply(person_string .. " " .. verb_string .. " " .. action_string)
end,
help = function(message)
	message:reply("Documentation can be found at https://github.com/iamlostdev/Memix")
end,
}
function get_all()
	get_person()
	get_verb()
	get_action()
end

function get_person()
	local people = require("People")
	local person = math.random(1, #people)
	person_string = People[person]
end

function get_verb()
	local verbs = require("Verbs")
	local verb = math.random(1, #verbs)
	verb_string = verbs[verb]
end

function get_action()
	local actions_list = require("Actions")
	local actions = actions_list.verb[verb_string]
	local action = math.random(1, #actions)
	action_string = actions[action]
end

return Commands
