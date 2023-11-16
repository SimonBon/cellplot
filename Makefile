# Define the default message
m ?= "project update"

# Define the package name
PACKAGE_NAME = your_package_name

# Define the commit target
commit:
	git add .
	git commit -m "$(m)"
	git push

# Define the publish_pypi target
publish_pypi:
	$(eval VERSION=$(shell python -c "import os; from $(PACKAGE_NAME).__init__ import __version__; print(__version__)"))
	@if [ "$(VERSION)" = "" ]; then \
		echo "Version not found in $(PACKAGE_NAME)/__init__.py"; \
	else \
		python setup.py sdist bdist_wheel; \
		twine upload dist/*$(VERSION)*; \
	fi