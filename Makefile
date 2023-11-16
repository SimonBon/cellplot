# Define the default message
message ?= default message

# Define the commit target
commit:
	git add .
	git commit -m "$(message)"
	# git push