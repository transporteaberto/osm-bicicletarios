#!/bin/bash

# Check if temporary directory exists
mkdir -p tmp

osm_file="tmp/brazil-latest.osm.pbf"

# If file doesn't exists, download it
if [ ! -f $osm_file ]
then
	echo "$osm_file não encontrado, baixando:"
	
  # create tmp directory if not exists
	mkdir -p tmp
	
	# download osm datafile to tmp directory
	wget --directory-prefix=tmp $osm_file
fi

# Extract bike parking info
if [ ! -f tmp/bicycle-parking.osm ]
then
	echo "Extraindo bicicletários do arquivo fonte"
  osmosis --rb $osm_file --nkv keyValueList="amenity.bicycle_parking" --wx tmp/bicycle-parking.osm
fi  

# Install Osmconvert if not available
if [ ! -f "osmconvert" ]
then
  wget -O - http://m.m.i24.cc/osmconvert.c | cc -x c - -lz -O3 -o osmconvert
fi

# CSV header
echo "osm_id,lon,lat,nome,capacidade,tipo,cobertura,operador,pago,período_máximo,vigilância,logradouro,número" > data/bicicletarios.csv
# CSV data
./osmconvert tmp/bicicle-parking.osm --all-to-nodes --csv="@id @lon @lat name capacity bicycle_parking covered operator fee maxstay surveillance addr:streetname addr:number" --csv-separator=, >> data/bicicletarios.csv