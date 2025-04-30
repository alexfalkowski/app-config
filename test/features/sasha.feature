Feature: Web
  A website for sasha-adventures.com.
  https://github.com/alexfalkowski/sasha

  Scenario: Verify configuration
    When we verify "sasha" configuration
    Then we should have the following values:
      | property                                | kind | value                                                           |
      | environment                             | eq   | production                                                      |
      | site.articles.address                   | eq   | https://cms.sasha-adventures.com                                |
      | telemetry.logger.kind                   | eq   | json                                                            |
      | telemetry.logger.level                  | eq   | info                                                            |
      | telemetry.metrics.kind                  | eq   | otlp                                                            |
      | telemetry.metrics.url                   | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/metrics |
      | telemetry.metrics.headers.Authorization | eq   | /etc/secrets/otlp/token                                         |
      | telemetry.tracer.kind                   | eq   | otlp                                                            |
      | telemetry.tracer.url                    | eq   | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/traces  |
      | telemetry.tracer.headers.Authorization  | eq   | /etc/secrets/otlp/token                                         |
