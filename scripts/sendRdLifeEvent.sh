#!/usr/bin/env bash

set -euo pipefail

usage() {
  cat <<'USAGE'
Usage: sendRdLifeEvent.sh [-u url] [-t title] [-d description]

Optional arguments (defaults shown):
  -u  Endpoint URL (https://logstash-http-usage-tracking-platform.apps.rosa.shared-neoload.16y4.p3.openshiftapps.com)
  -t  Event title ("Org-wide Incident Retrospective")
  -d  Event description ("Postmortem published for Jan 13 incident. Tracking mitigation tasks and comms.")
  -h  Show this help message
USAGE
}

endpoint_url="https://logstash-http-usage-tracking-platform.apps.rosa.shared-neoload.16y4.p3.openshiftapps.com"
event_title="Org-wide Incident Retrospective"
event_description="Postmortem published for Jan 13 incident. Tracking mitigation tasks and comms."

while getopts ":u:t:d:h" opt; do
  case "${opt}" in
    u) endpoint_url="${OPTARG}" ;;
    t) event_title="${OPTARG}" ;;
    d) event_description="${OPTARG}" ;;
    h)
      usage
      exit 0
      ;;
    \?)
      echo "Invalid option: -${OPTARG}" >&2
      usage
      exit 1
      ;;
    :)
      echo "Option -${OPTARG} requires an argument." >&2
      usage
      exit 1
      ;;
  esac
done

current_date="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

curl --request POST \
  --header "Content-Type: application/json" \
  --data @- \
  "${endpoint_url}" <<JSON
{
  "product": "DORA Metrics",
  "event": "rdLifeEvent",
  "date": "${current_date}",
  "title": "${event_title}",
  "description": "${event_description}"
}
JSON