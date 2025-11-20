# Pipeline Implementation Steps

| Step | Description | Status | Notes |
| --- | --- | --- | --- |
| 1 | Add Logstash Git submodule | ✅ Done | Submodules added at `repositories/neotys-logstash` and `repositories/usage-tracking-platform`; keep pinned to tagged releases and capture patches in their respective `README.md`. |
| 2 | Adapt NeoLoad signature requirements | ⬜ Pending | Allow DORA events to bypass signature verification while keeping it for legacy producers. |
| 3 | Document token onboarding | ⬜ Pending | Document token request/rotation process and Logstash reload steps. |

1. **Add Logstash Git submodule**  
   Initialize the Logstash customization repo as a submodule so that pipeline-specific filters/config live alongside this project.
   ```bash
   git submodule add https://github.com/Tricentis-NeoLoad/neotys-logstash.git repositories/neotys-logstash
   git submodule add https://github.com/Tricentis-NeoLoad/usage-tracking-platform.git repositories/usage-tracking-platform
   git submodule update --init --recursive
   ```
   Keep the submodules pinned to tagged releases; document any local patches inside `repositories/neotys-logstash/README.md` and `repositories/usage-tracking-platform/README.md`.

2. **Adapt NeoLoad signature requirements**  
   Update the Logstash filter to let DORA Metrics events bypass the existing signature verification logic without affecting NeoLoad/legacy producers.
   - Tag DORA events at ingestion (e.g., by HTTP listener path, custom header, or product field) and short-circuit `verifySignature` when the tag is present.
   - Keep current HMAC verification for all other producers to avoid weakening the broader ecosystem.
   - Emit structured logs/metrics for bypassed events so we can audit how often the shortcut is used and revisit the decision later.

3. **Document token onboarding**  
   Extend the operational runbook to cover how new teams request a DORA emitter token, how secrets are rotated, and how Logstash configuration is reloaded after token list updates.
