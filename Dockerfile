# Get tag from https://hub.docker.com/r/jupyter/minimal-notebook/tags
FROM jupyter/minimal-notebook:1386e2046833

RUN conda install --yes \
    skyfield \
    matplotlib \
    astropy \
    astroplan \
    nodejs

# install JupyterLab extensions
RUN conda install -c conda-forge nodejs && \
    jupyter labextension install @krassowski/jupyterlab_go_to_definition
