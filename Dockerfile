FROM alpine:latest

LABEL "com.github.actions.name"="Jekyll Publish Drafts"
LABEL "com.github.actions.description"="Publish drafts with a date greater than the current time"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="0.1.0"
LABEL repository="https://github.com/soywiz/github-action-jekyll-publish-drafts"
LABEL homepage="https://jarv.is/"
LABEL maintainer="Jake Jarvis <jake@jarv.is>"

COPY README.md LICENSE start.sh /

RUN apk add --no-cache git nodejs

CMD ["/start.sh"]
