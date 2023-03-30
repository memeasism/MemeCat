if package.config:sub(1,1) == "/" then
	os.execute("bash start.sh")
else
	os.execute("start.bat")
end
