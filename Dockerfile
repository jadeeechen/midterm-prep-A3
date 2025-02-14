FROM rocker/rstudio:4.4.2

# Install remotes package to install specific versions of other packages.
RUN Rscript -e 'install.packages("remotes", repos="https://cloud.r-project.org")'

# Install a specific version of a package (e.g., cowsay).
RUN Rscript -e 'remotes::install_version("cowsay", version = "0.8.0", repos = "https://cloud.r-project.org")'

# Install a specific version of a package (e.g., readr).
RUN Rscript -e 'remotes::install_version("readr", version = "2.1.4")'