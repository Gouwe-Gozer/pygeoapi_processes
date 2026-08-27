FROM geopython/pygeoapi:latest

#
#   install latest system updates
#
RUN apt-get update \
    && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/*

# Install custom processes
RUN mkdir -p /pygeoapi/data/processes
COPY ./data/dnk_ppp_2020_1km_Aggregated_UNadj.tif /pygeoapi/data/processes/dnk_ppp_2020_1km_Aggregated_UNadj.tif
COPY ./src /directed_pygeoapi_processes/src
COPY ./requirements.txt /directed_pygeoapi_processes/requirements.txt
COPY ./pyproject.toml /directed_pygeoapi_processes/pyproject.toml
COPY ./README.md /directed_pygeoapi_processes/README.md
RUN /venv/bin/python3 -m pip install --no-cache-dir /directed_pygeoapi_processes
