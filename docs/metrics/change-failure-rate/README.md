# Change Failure Rate

## Functional Description
- 

## Event Expectations
- Deployment outcome events (success/failure)
- Incident or rollback events tied to recent deployments

## Metadata Schema
- Service / component identifier
- Deployment identifier
- Failure classification (rollback, incident, hotfix)
- Root cause summary link
- Environment

## Technical Implementation Notes
- Correlate failed deployments with incident timeline
- Normalize failure signals from multiple observability sources
- Store calculated failure ratio per time window

## Testing & Validation
- Reconcile failure counts with incident tracking system
- Verify edge cases such as partial rollbacks and blue/green swaps

## Open Questions
- What constitutes a “failure” for canary or shadow releases?
- How to attribute failures when multiple changes deploy together?
