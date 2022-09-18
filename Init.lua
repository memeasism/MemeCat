commands = {
create = function(appid, discordia, client)
        client._api:createGlobalApplicationCommand(appid,{
        name = "roll",
        description = "Generate Meme Idea",
        type = discordia.enums.appCommandType.chatInput,
        options = {
        }
    })
    client._api:createGlobalApplicationCommand(appid,{
        name = "help",
        description = "Get Help",
        type = discordia.enums.appCommandType.chatInput,
        options = {
        }
    })

end
}
return commands