Feature: Bezeichner
  Bezeichner takes care of identifiers used in your services.
  https://github.com/alexfalkowski/bezeichner

  Scenario: Verify configuration
    When we verify "bezeichner" configuration
    Then we should have the following values:
      | property               | value                                                           |
      | environment            | production                                                      |
      | telemetry.logger.kind  | otlp                                                            |
      | telemetry.logger.url   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/logs    |
      | telemetry.metrics.kind | otlp                                                            |
      | telemetry.metrics.url  | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/metrics |
      | telemetry.tracer.kind  | otlp                                                            |
      | telemetry.tracer.url   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/traces  |
