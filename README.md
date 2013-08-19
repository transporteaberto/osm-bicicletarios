Este é o repositório que guarda dados do [mapa dos bicicletários do Brasil](../master/data/bicicletarios.json), a partir das constribuições de usuários do [OpenStreetMap](www.openstreetmap.org). 

### Atualizando os dados

No diretório do repositório, rode:

  ./update.sh

O arquivo `data/bicicletarios.csv` será atualizado.

O arquivo `data/bicicletarios.json` é um GeoJSON, e pode ser gerado em http://togeojson.com a partir do arquivo csv.

Este repositório segue o padrão [Data Packages](http://data.okfn.org/standards/data-package) da [Open Knowledge Foundation](http://br.okfn.org/). 

### Requisitos

* [Osmosis](http://wiki.openstreetmap.org/wiki/Osmosis)

### Licença

Os arquivos na pasta `data` estão sob a licença [ODbL](http://opendatacommons.org/licenses/odbl/summary). 

Veja detalhes legais na [página de copyright](http://www.openstreetmap.org/copyright) do OpenStreetMap.
