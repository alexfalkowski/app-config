include bin/build/make/git.mak

# Lint files.
lint:
	find . -name "*.yaml" -exec yq eval {} \;

# Create token.
token:
	sudo bash -c "mkdir -p /etc/secrets/otlp && touch /etc/secrets/otlp/token"

verify-standort:
	servicectl http -i file:standort/production/server.yaml

verify-bezeichner:
	servicectl http -i file:bezeichner/production/server.yaml

# Verify configs.
verify: verify-standort verify-bezeichner

# Release a new version.
release:
	git tag $(version)
	git push origin --tags
