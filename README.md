O mapa de bicicletários mapeados no OpenStretMap contém a posição e outras informações sobre capacidade, cobertura, vigilância e outros atributos descritos no [wiki do OpenStreetMap](http://wiki.openstreetmap.org/wiki/Bicycle_parking). Pode-se considerar que este mapa está em fase embrionária, pois há poucos pontos mapeados. É possível visualizar os dados neste [mapa](../master/data/bicicletarios.json).

Toda informação disponível no OpenStreetMap é criada pelos seus colaboladores ou importada de fontes abertas. Se a sua localidade conta com poucos pontos mapeados e você quer contribuir [registre-se no OpenStretMap](https://www.openstreetmap.org/user/new) e comece a editar. Se quiser conhecer um exemplo de edição antes, veja este [tutorial introdutório](http://www.youtube.com/watch?v=o6EtBuokdPs).

Os dados aqui disponíveis neste repositório foram gerados a partir dos dados brutos do OpenStreetMap para o Brasil, disponíveis [neste servidor](http://download.geofabrik.de/south-america.html).

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
