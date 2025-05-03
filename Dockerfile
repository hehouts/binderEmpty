FROM rocker/rstudio:4.3.3

# Prevent micromamba crash by setting root prefix
ENV MAMBA_ROOT_PREFIX=/usr/local

# Optional: install R packages
COPY install.R /tmp/install.R
RUN Rscript /tmp/install.R

# Set working directory
WORKDIR /home/rstudio
