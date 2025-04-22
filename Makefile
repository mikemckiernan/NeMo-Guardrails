.PHONY: all test tests test_watch test_coverage test_profile docs pre_commit help

# Default target executed when no specific target is provided to make.
all: help

# Define a variable for the test file path.
TEST_FILE ?= tests/

test:
	poetry run pytest $(TEST_FILE)

tests:
	poetry run pytest $(TEST_FILE)

test_watch:
	poetry run ptw --snapshot-update --now . -- -vv $(TEST_FILE)

test_coverage:
	poetry run pytest --cov=$(TEST_FILE) --cov-report=term-missing

test_profile:
	poetry run pytest -vv tests/ --profile-svg

docs: docs-guardrails docs-community docs-colang docs-review

docs-guardrails:
	poetry run sphinx-build -b html docs _build/docs/guardrails

docs-community:
	poetry run sphinx-build -b html docs/community _build/docs/community

docs-colang:
	poetry run sphinx-build -b html docs/colang _build/docs/colang

docs-review:
	poetry run sphinx-build -b html docs/review _build/docs

pre_commit:
	pre-commit install
	pre-commit run --all-files


# HELP

help:
	@echo '----'
	@echo 'test                         - run unit tests'
	@echo 'tests                        - run unit tests'
	@echo 'test TEST_FILE=<test_file>   - run all tests in given file'
	@echo 'test_watch                   - run unit tests in watch mode'
	@echo 'test_coverage                - run unit tests with coverage'
	@echo 'docs                         - build docs, if you installed the docs dependencies'
	@echo 'pre_commit                   - run pre-commit hooks'
