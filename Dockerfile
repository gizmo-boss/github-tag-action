FROM node:12-alpine3.15
LABEL "repository"="https://github.com/gizmo-boss/github-tag-action"
LABEL "homepage"="https://github.com/gizmo-boss/github-tag-action"
LABEL "maintainer"="gizmo-boss"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
