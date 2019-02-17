FROM debian:jessie-slim

# docker build -t vanessa/pull-request-action .

LABEL "com.github.actions.name"="Push Github"
LABEL "com.github.actions.description"="push to Github"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="yellow"

RUN apt-get update && apt-get install -y jq curl wget git
COPY push.sh /push.sh

RUN chmod u+x /push.sh
ENTRYPOINT ["/push.sh"]