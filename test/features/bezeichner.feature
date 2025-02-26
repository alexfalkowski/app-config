Feature: Bezeichner
  Bezeichner takes care of identifiers used in your services.
  https://github.com/alexfalkowski/bezeichner

  Scenario: Verify configuration
    When we verify "bezeichner" configuration
    Then we should have the following values:
      | property              | value                                                        |
      | telemetry.logger.kind | otlp                                                         |
      | telemetry.logger.url  | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/logs |
