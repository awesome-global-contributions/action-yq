FROM python:3-alpine

LABEL authors="Oscar Ablinger <dev.ablinger@gmail.com>, Adrien Lemaire <lemaire.adrien@gmail.com>"
LABEL version="0.1.0"
LABEL repository="https://github.com/awesome-global-contributions/yq-action"
LABEL homepage="https://github.com/awesome-global-contributions/yq-action"

LABEL com.github.actions.name="YQ Script"
LABEL com.github.actions.description="A python environment with yq (and jq) installed"
LABEL com.github.actions.icon="python"
LABEL com.github.actions.color="blue"

RUN apk --update --no-cache add jq && pip install yq

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
