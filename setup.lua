if package.config:sub(1,1) == "/" then
	os.execute("bash luvit.sh")
	os.execute("bash installdeps.sh")
else
	os.execute("luvit.bat")
	os.execute("installdeps.bat")
end
