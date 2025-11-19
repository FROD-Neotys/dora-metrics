# Delivery Roadmap

## Platform Foundations

| Phase | Focus | Status | Notes |
| --- | --- | --- | --- |
| 1. Foundations | Stakeholders, success metrics, governance | Not started | Docs, schemas, env inventory |
| 2. Pipeline Implementation | Ingestion + storage platform | Not started | Build services, add observability, retries, schema validation |

## Deployment Frequency (POC)

| Phase | Focus | Status | Notes |
| --- | --- | --- | --- |
| 3. Metric Rollout | Instrument deployment events | Not started | Establish baseline instrumentation; prove end-to-end flow |
| 4. Visualization & Insights | Dashboards & alerting | Not started | Ship first dashboards + alerts for deployment frequency |
| 5. Validation & Expansion | QA + lessons | Not started | Validate data quality, document learnings for next metrics |

## Lead Time for Changes

| Phase | Focus | Status | Notes |
| --- | --- | --- | --- |
| 3. Metric Rollout | Capture lifecycle timestamps | Not started | Reuse pipeline patterns from deployment frequency |
| 4. Visualization & Insights | Lead-time drill downs | Not started | Add timeline visualizations + reviewer insights |
| 5. Validation & Expansion | QA + backlog updates | Not started | Validate joins, refine schema for future metrics |

## Change Failure Rate

| Phase | Focus | Status | Notes |
| --- | --- | --- | --- |
| 3. Metric Rollout | Failure signal ingestion | Not started | Integrate incident + deployment outcomes |
| 4. Visualization & Insights | Failure ratios & alerts | Not started | Expose per-service CFR and alert thresholds |
| 5. Validation & Expansion | QA + playbooks | Not started | Confirm incident linkage accuracy, update runbooks |

## Mean Time to Recovery

| Phase | Focus | Status | Notes |
| --- | --- | --- | --- |
| 3. Metric Rollout | Incident lifecycle coverage | Not started | Ingest detection/resolution timestamps |
| 4. Visualization & Insights | MTTR dashboards | Not started | Show MTTR trends and service breakdowns |
| 5. Validation & Expansion | QA + future readiness | Not started | Validate long-running incidents, feed backlog for non-DORA metrics |

## Phase 1: Foundations
- Confirm stakeholders, success metrics, and data governance.
- Stand up docs, schemas, and environment inventory.

## Phase 2: Pipeline Implementation
- Build ingestion services and storage tables.
- Enable observability, retries, and schema validation.

## Phase 3: Metric Rollout
- Treat deployment frequency as the initial POC.
- Repeat instrumentation workflow for lead time, change failure rate, and mean time to recovery after each prior metric is validated.

## Phase 4: Visualization & Insights
- Pair each metric rollout with its own dashboards, alerting, and stakeholder review cadence.
- Iterate on UX for drill-downs and self-service exploration using feedback from the latest metric release.

## Phase 5: Validation & Expansion
- Run data quality audits and user acceptance tests immediately after each metric’s visualization launch.
- Prepare backlog for future metrics beyond DORA using lessons learned from the prior metric cycle.

## Dependencies & Checkpoints
- Alignment with CI/CD owners, incident management teams, and analytics platform.
- Regular checkpoints for schema changes, privacy reviews, and production readiness.
