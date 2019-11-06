FROM jupyter/minimal-notebook
RUN conda install --yes \
    skyfield matplotlib astropy astroplan
