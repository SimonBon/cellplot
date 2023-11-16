# Define the default message
m ?= project update

# Define the commit target
commit:
	git add .
	git commit -m "$(m)"
	git push