FROM dukegcb/openshift-shiny-verse:4.0.2
RUN install2.r ggplot2
RUN install2.r plotly
ADD ./src /srv/code
