Feature: Standort
  Standort provides location based information.
  https://github.com/alexfalkowski/standort

  Scenario: Verify configuration
    When we verify "standort" configuration
    Then we should have the following values:
      | property              | value                                                        |
      | telemetry.logger.kind | otlp                                                         |
      | telemetry.logger.url  | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/logs |
