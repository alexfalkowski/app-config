include bin/build/make/git.mak

# Lint files.
lint:
	find . -name "*.yaml" -exec yq eval {} \;
