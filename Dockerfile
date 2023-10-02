FROM opensuse/tumbleweed:latest

RUN zypper --non-interactive update
RUN zypper --non-interactive install osc
RUN zypper --non-interactive clean --all

COPY hello.sh /hello.sh
RUN chmod +x /hello.sh

ENTRYPOINT ["/hello.sh"]
