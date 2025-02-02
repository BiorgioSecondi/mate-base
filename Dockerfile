FROM registry.gitlab.com/islandoftex/images/texlive:latest
RUN /bin/sh -c apt-get install asymptote latexmk
