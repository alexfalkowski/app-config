Feature: Standort
  Standort provides location based information.
  https://github.com/alexfalkowski/standort

  Scenario: Verify configuration
    When we verify "standort" configuration
    Then we should have the following values:
      | property               | kind | value                                                           |
      | environment            | eq   | production                                                      |
      | telemetry.logger.kind  | eq   | otlp                                                            |
      | telemetry.logger.url   | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/logs    |
      | telemetry.metrics.kind | eq   | otlp                                                            |
      | telemetry.metrics.url  | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/metrics |
      | telemetry.tracer.kind  | eq   | otlp                                                            |
      | telemetry.tracer.url   | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/traces  |
