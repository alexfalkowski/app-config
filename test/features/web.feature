Feature: Web
  A website lean-thoughts.com.
  https://github.com/alexfalkowski/web

  Scenario: Verify configuration
    When we verify "web" configuration
    Then we should have the following values:
      | property                                | kind | value                                                           |
      | environment                             | eq   | production                                                      |
      | telemetry.logger.kind                   | eq   | otlp                                                            |
      | telemetry.logger.url                    | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/logs    |
      | telemetry.logger.headers.Authorization  | eq   | /etc/secrets/otlp/token                                         |
      | telemetry.metrics.kind                  | eq   | otlp                                                            |
      | telemetry.metrics.url                   | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/metrics |
      | telemetry.metrics.headers.Authorization | eq   | /etc/secrets/otlp/token                                         |
      | telemetry.tracer.kind                   | eq   | otlp                                                            |
      | telemetry.tracer.url                    | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/traces  |
      | telemetry.tracer.headers.Authorization  | eq   | /etc/secrets/otlp/token                                         |
