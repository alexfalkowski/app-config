Feature: Web
  A website lean-thoughts.com.
  https://github.com/alexfalkowski/web

  Scenario: Verify configuration
    When we verify "web" configuration
    Then we should have the following values:
      | property              | value                                                        |
      | telemetry.logger.kind | otlp                                                         |
      | telemetry.logger.url  | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/logs |
