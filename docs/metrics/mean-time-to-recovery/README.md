# Mean Time to Recovery (MTTR)

## Functional Description
- 

## Event Expectations
- Incident detection events
- Customer impact or severity updates
- Resolution / recovery events

## Metadata Schema
- Incident identifier
- Start and end timestamps
- Severity level
- Affected services / environments
- Resolution owner and remediation summary link

## Technical Implementation Notes
- Capture lifecycle events from incident management tooling
- Enforce consistent timestamp sources for accuracy
- Compute MTTR per incident and aggregate by service/time period

## Testing & Validation
- Compare derived MTTR to post-incident review documents
- Ensure incidents without clear resolution are flagged

## Open Questions
- How to handle ongoing or multi-stage incidents?
- Should maintenance windows be excluded from MTTR calculations?
