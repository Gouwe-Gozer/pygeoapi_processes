# DIRECTED pyGeoAPI Processes

## Example data

The WorldPop Denmark 2020 population raster required by the example process
is included in the repository at
`data/dnk_ppp_2020_1km_Aggregated_UNadj.tif`. No separate download is needed.

The original raster is available from the
[WorldPop public data repository](https://data.worldpop.org/GIS/Population/Global_2000_2020_1km_UNadj/2020/DNK/).
It is part of the Global High Resolution Population Denominators Project by
WorldPop and the Center for International Earth Science Information Network
(CIESIN), Columbia University. See the
[WorldPop dataset record and recommended citation](https://hub.worldpop.org/geodata/summary?id=24777).
WorldPop makes this dataset available under the
[Creative Commons Attribution 4.0 International licence](https://creativecommons.org/licenses/by/4.0/).

## Build the Docker image

```console
docker compose build
```

## Start the Docker container

```console
docker compose up -d && docker compose logs -f
```

pygeoapi is running at <http://localhost:5000>

## Execute a process

```console
curl -X POST -H "Content-Type: application/json" -d "{\"inputs\":{\"intensity\": [0, 30, 80]}}" http://localhost:5000/processes/climada-simple-example-denmark-process/execution > out.csv
```
