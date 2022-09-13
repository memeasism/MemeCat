local people = require("People")
local person_called
Actions = {
    verb = {
        gets = {
            "shot",
            "their credit card info stolen",
            "eaten",
            "scurvy",
            "Cancer and has to cook meth",
            "wings",
            "gets hit by a truck",
            "their pizza stolen",
            "kissed by their homie",
        },
        does = {
            "the griddy",
            "someones homework",
            "not like his veggies",
            "not need auto-tune",
        },
        avoids = {
            "a nuclear bomb",
            "a flashbang",
            "getting hit by a truck",
        },
        makes = {
            "a minecraft house",
            "A campfire",
            "Tobey Maguire cry",
        },
        finds = {
            "$1M",
        },
        plays = {
            "Valorant",
            "Minecraft",
            "Multiversus",
            "CS:GO",
            "Fortnite",
            "Fall Guys",
        },
        learns = {
            "how to cook crystal meth",
            "to play the violin",
            "The truth of the universe",
            "About fnaf lore",
        },
        spends = {
            "their life savings on a Pokemane donation",
            "all their VBucks",
            "time in prison (Dropped Soap)",
        },
        beats = {
            "Call of Duty zombies",
            people[math.random(1,#people)].. " in Mario Kart",
        },
        cooks = {
            "meth",
            "Burgers",
        },
        loses = {
            "at jenga",
        },
        paints = {
            "A picture of " .. people[math.random(1,#people)],
        },
        kills = people,

    },
}
return Actions
