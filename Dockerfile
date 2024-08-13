FROM rocker/verse:4.3.3

ENV NB_USER=rstudio
ENV VIRTUAL_ENV=/opt/venv
ENV PATH=${VIRTUAL_ENV}/bin:${PATH}

# Install python and jupyter
RUN /rocker_scripts/install_jupyter.sh

# Setup persisting package folder
RUN R --quiet -e '.libPaths("/usr/local/lib/R/persist-library")' \
	&& python -c 'import sys; sys.path.append("usr/local/lib/python/persist-library")' 

EXPOSE 8888

CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--no-browser"]

USER ${NB_USER}

WORKDIR /home/${NB_USER}
