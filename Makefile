include bin/build/make/git.mak

# Setup files.
setup:
	sudo mkdir -p /etc/secrets/otlp
	$(shell echo ${GRAFANA_METRICS_BASIC_AUTH} | sudo tee /etc/secrets/otlp/token > /dev/null)

# Verify for gRPC.
grpc-verify:
	servicectl grpc -i file:standort/production/server.yaml
	servicectl grpc -i file:bezeichner/production/server.yaml

# Verify configuration
verify: setup grpc-verify


# Lint files.
lint:
	find . -name "*.yaml" -exec yq eval {} \;

# Release a new version.
release:
	git tag $(version)
	git push origin --tags
