local people = require("People")
local person_called
Actions = {
    verb = {
        gets = {
            "McDonalds",
            "shot",
            "their credit card info stolen",
            "eaten",
            "scurvy",
            "Cancer and has to cook meth",
            "wings",
            "hit by a truck",
            "their pizza stolen",
            "kissed by their homie",
        },
        does = {
            "the griddy",
            people[math.random(1, #people)] .. "'s homework",
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
            "the Blue Stuff",
        },
        plays = {
            "Valorant",
            "Minecraft",
            "Multiversus",
            "CS:GO",
            "Fortnite",
            "Fall Guys",
            "Among Us",
            "GTA",
            "Jenga",
        },
        learns = {
            "how to install gentoo",
            "how to cook crystal meth",
            "to play the violin",
            "The truth of the universe",
            "About fnaf lore",
            "why their dad didnt return with the milk",
        },
        spends = {
            "their life savings on a Pokemane donation",
            "all their VBucks",
            "time in prison (Dropped Soap)",
            "an hour debugging code",
        },
        beats = {
            "Call of Duty zombies",
            people[math.random(1,#people)].. " in Mario Kart",
            "the IRS",
        },
        cooks = {
            "meth",
            "Burgers",
        },
        loses = {
            "at jenga",
            "their mind",
            "all their Vbucks",
        },
        paints = {
            "A picture of " .. people[math.random(1,#people)],
        },
        kills = people,

    },
}
return Actions
