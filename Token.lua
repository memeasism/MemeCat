local token_file = assert(io.open('./.env/token.txt'))
local token = token_file:read("*line")
token_file:close()
return token
