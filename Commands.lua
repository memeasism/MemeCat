local person_string
local verb_string

Commands = {
roll = function(message)
    get_person()
	get_verb()
	message.channel:send(person_string .. " " .. verb_string)
end,
}
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
return Commands