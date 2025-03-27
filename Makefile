include bin/build/make/help.mak
include bin/build/make/git.mak

# Lint the codebase.
lint:
	make -C test lint

# Install dependencies.
dep:
	make -C test dep

# Clean all unused dependencies.
clean-dep:
	make -C test clean-dep

# Run all tests.
test:
	make -C test test

# Run all features.
features:
	make -C test features

# Release a new version.
release:
	git tag $(version)
	git push origin --tags
