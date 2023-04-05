local id_file = io.open("./.env/appid")
local id = id_file:read("*a")
id_file:close()
return id