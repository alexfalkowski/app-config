Feature: Bezeichner
  Bezeichner takes care of identifiers used in your services.
  https://github.com/alexfalkowski/bezeichner

  Scenario: Verify configuration
    When we verify "bezeichner" configuration
    Then we should have the following values:
      | property               | kind      | value                                                           |
      | environment            | eq        | production                                                      |
      | generator.applications | generator | uuid,ksuid,ulid,snowflake,xid,nanoid,typeid                     |
      | telemetry.logger.kind  | eq        | otlp                                                            |
      | telemetry.logger.url   | eq        | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/logs    |
      | telemetry.metrics.kind | eq        | otlp                                                            |
      | telemetry.metrics.url  | eq        | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/metrics |
      | telemetry.tracer.kind  | eq        | otlp                                                            |
      | telemetry.tracer.url   | eq        | https://otlp-gateway-prod-eu-west-2.grafana.net/otlp/v1/traces  |
