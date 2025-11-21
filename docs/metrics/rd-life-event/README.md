# R&D Life Event

## Functional Description
- Provides an auxiliary signal that captures non-engineering-system events impacting velocity (e.g., org changes, infrastructure outages, compliance freezes).
- Enables correlation between DORA trends and contextual happenings to explain sudden deviations without distorting core metric formulas.
- Serves as a lightweight event stream for qualitative annotations that analysts can overlay on dashboards and investigative notebooks.

## Metadata Schema
- Inherits global envelope defined in `docs/metrics/README.md`:
  - `date`: when the event was emitted by the producer (ISO-8601).
  - `product`: constant `DORA Metrics`.
  - `event`: use `rdLifeEvent`.
- Specific fields:
  - `title`: concise human-readable summary.
  - `description`: markdown-capable narrative with links to RCAs, docs, etc.
  
## Technical Implementation Notes

