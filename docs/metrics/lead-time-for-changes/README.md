# Lead Time for Changes

## Functional Description
- 

## Event Expectations
- Commit creation events
- Merge / pull request events
- Deployment completion events

## Metadata Schema
- Commit hash
- Author
- Reviewer / approver
- Service / component
- Environment
- Time stamps for key stages

## Technical Implementation Notes
- Capture commit timestamps via SCM webhooks
- Join with deployment events using commit hash
- Store derived durations for reporting

## Testing & Validation
- Compare calculated lead time with spot-checked samples
- Validate join accuracy across services

## Open Questions
- How to model reverts / cherry-picks?
- Do we include hotfix branches in the same calculation?
