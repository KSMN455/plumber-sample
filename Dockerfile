FROM r-base

COPY  sample.R /usr/local/src/
COPY  plumber.R /usr/local/src/

WORKDIR /usr/local/src/

RUN R -e 'install.packages("plumber")'

EXPOSE 8000

ENTRYPOINT ["Rscript", "plumber.R"]
