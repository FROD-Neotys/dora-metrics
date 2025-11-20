# Pipeline Implementation Steps

| Step | Description | Status | Notes |
| --- | --- | --- | --- |
| 1 | Add Logstash Git submodule | ✅ Done | Submodules added at `repositories/neotys-logstash` and `repositories/usage-tracking-platform`; keep pinned to tagged releases and capture patches in their respective `README.md`. |
| 2 | Adapt NeoLoad signature requirements | ⬜ Pending | Replace signature verification with token-based validation and DLQ handling. |
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
   The upstream Logstash config expects each event to carry the NeoLoad cryptographic signature. For the DORA Metrics emitters we instead rely on pre-shared tokens.
   - Remove or disable the signature verification filter in the Logstash pipeline pulled in from the submodule.
   - Introduce a whitelist-based token validator (e.g., compare `headers.dora_token` against values stored in Vault or environment variables).
   - Ensure invalid tokens route the event to the dead-letter queue with enough metadata for auditing.

3. **Document token onboarding**  
   Extend the operational runbook to cover how new teams request a DORA emitter token, how secrets are rotated, and how Logstash configuration is reloaded after token list updates.
