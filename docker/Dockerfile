FROM python:slim
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install apt-utils procps bash bash-completion git graphviz elinks cron rxvt-unicode

RUN useradd --create-home gopoc -s /bin/bash
USER gopoc
WORKDIR /home/gopoc

ENV TERM=xterm

ENV VIRTUAL_ENV=/home/gopoc/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
RUN python -m pip install --upgrade pip
RUN pip install supervisor

RUN echo 8

COPY supervisord.conf .
COPY clone.sh .
COPY start_supervisord.sh .
COPY update.sh .

EXPOSE 5001 9001
ENTRYPOINT ["/bin/bash", "start_supervisord.sh"]

