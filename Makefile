# Define the default message
message ?= project update

# Define the commit target
commit:
	git add .
	git commit -m "$(message)"
	git push