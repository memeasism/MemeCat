local id_file = assert(io.open("./.env/appid.txt"))
local id = id_file:read("*line")
id_file:close()
return id
