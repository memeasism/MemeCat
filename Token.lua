local token_file = io.open('./.env/token')
local token = token_file:read("*a")
token_file:close()
return token