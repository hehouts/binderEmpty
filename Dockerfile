# Start from Binder’s minimal R image
FROM ghcr.io/binder-examples/r:main

# Set micromamba root so the terminal works
ENV MAMBA_ROOT_PREFIX=/srv/conda

# Copy and install R packages (optional)
COPY install.R /tmp/install.R
RUN Rscript /tmp/install.R

# Set working directory
WORKDIR /home/rstudio
