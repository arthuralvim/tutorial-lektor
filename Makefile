# Makefile lektor-tutorial

.PHONY: clean clean-build clean-others clean-pyc clean-test check.lektor_username check.lektor_password build deploy

clean: clean-build clean-others clean-pyc clean-test

clean-build:
	@rm -fr build/
	@rm -fr dist/
	@rm -fr .eggs/
	@find . -name '*.egg-info' -exec rm -fr {} +
	@find . -name '*.egg' -exec rm -f {} +

clean-others:
	@find . -name 'Thumbs.db' -exec rm -f {} \;

clean-pyc:
	@find . -name '*.pyc' -exec rm -f {} +
	@find . -name '*.pyo' -exec rm -f {} +
	@find . -name '*~' -exec rm -f {} +
	@find . -name '__pycache__' -exec rm -fr {} +

clean-test:
	@rm -fr .tox/
	@rm -f .coverage
	@rm -fr htmlcov/

check.lektor_username:
	@if test "$(LEKTOR_DEPLOY_USERNAME)" = "" ; then echo "LEKTOR_DEPLOY_USERNAME is undefined. The default is tests."; fi

check.lektor_password:
	@if test "$(LEKTOR_DEPLOY_PASSWORD)" = "" ; then echo "LEKTOR_DEPLOY_PASSWORD is undefined. The default is tests."; fi

build:
	@echo "Build started on `date`"
	@cd mulektor && lektor build -f webpack
	@echo "Build completed on `date`"

deploy: check.lektor_username check.lektor_password
	@echo "Deploy started on `date`"
	@cd mulektor && lektor deploy ghpages
	@echo "Deploy completed on `date`"
