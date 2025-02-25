include bin/build/make/git.mak

# Lint files.
lint:
	find . -name "*.yaml" -exec yq eval {} \;

# Release a new version.
release:
	git tag $(version)
	git push origin --tags
