# Metric Documentation Template

Use this structure for each metric to maintain consistency and support future additions.

## Functional Description
- 

## Event Expectations
- 

## Metadata Schema
- All metric events must include the common metadata envelope:
  - `date`: ISO-8601 timestamp when the event left the producer system.
  - `product`: constant string `DORA Metrics` identifying the telemetry domain.
  - `event`: semantic name of the emitted event (e.g., `deployment`).

## Technical Implementation Notes
- 

## Testing & Validation
- 

## Open Questions
- 
